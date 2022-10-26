#> mhdp_weapons:core/attack/effect/crit
#
# 攻撃時処理 ヒットエフェクト 会心

# 乱数取得
    scoreboard players set #mhdp_temp_const MhdpCore 120
    function lib:random/
    scoreboard players operation #mhdp_temp_rand MhdpCore %= #mhdp_temp_const MhdpCore
    scoreboard players remove #mhdp_temp_rand MhdpCore 60

# 表示用マーカー召喚
    execute positioned as @e[tag=Victim] facing entity @s feet positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["EffectPos"]}
    execute rotated as @s rotated ~90 0 as @e[type=marker,tag=EffectPos,limit=1] positioned as @s run tp @s ~ ~1 ~ ~ ~
    execute as @e[type=marker,tag=EffectPos,limit=1] store result entity @s Rotation[1] float 1 run scoreboard players get #mhdp_temp_rand MhdpCore

# 表示
    execute as @e[type=marker,tag=EffectPos,limit=1] at @s run function mhdp_weapons:core/attack/effect/crit_

# 終了
    scoreboard players reset #mhdp_temp_rand
    kill @e[type=marker,tag=EffectPos]
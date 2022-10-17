#> mhdp_core:player/sneak/avoid/main
#
# ステップ回避実行処理

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target

# スコア減算
    scoreboard players remove @s MhdpFuncSneakAvoid 1

# 移動
    execute if entity @s[scores={MhdpFuncSneakAvoid=15..}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotater] rotated ~ 0 run function mhdp_core:player/sneak/avoid/main_move

# 演出
    execute if entity @s[scores={MhdpFuncSneakAvoid=24}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:24,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpFuncSneakAvoid=20..}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpFuncSneakAvoid=15..}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 終了
    execute if entity @s[scores={MhdpFuncSneakAvoid=..0}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]
    execute as @e[type=marker,tag=SneakAvoidStand0] run tag @s remove Rotater
    execute if entity @s[scores={MhdpFuncSneakAvoid=..0}] run tag @s remove PlySneakAvoidFunc

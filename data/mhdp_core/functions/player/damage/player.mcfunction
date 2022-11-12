#> mhdp_core:player/damage/player
#
# ダメージを受けたときに走らせる処理 プレイヤー用

# ダメージ取得
    execute store result score #mhdp_temp_damage MhdpCore run data get storage mhdp_core:temp Temp.Damage.Damage 100

# score_damage用の引数用意
    data modify storage score_damage: Argument set value {Damage:1.0f, BypassArmor:1b}
    execute store result storage score_damage: Argument.Damage float 0.01 run scoreboard players get #mhdp_temp_damage MhdpCore

# 攻撃
    execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[tag=PlyDeathAnimation] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function score_damage_mhdp:api/attack

# フレーム回避成功時
    execute if entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function mhdp_core:player/damage/player_avoid

# 終了
    scoreboard players reset #mhdp_temp_damage MhdpCore

#> score_damage_mhdp:core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function score_damage:core/attack

# HP
    execute store result score $Health ScoreDamageCore run data get entity @s Health 10000
# 耐性エフェクト
    execute if data storage score_damage: Argument{BypassResistance:0b} store result score $Resistance ScoreDamageCore run data get entity @s ActiveEffects[{Id:11}].Amplifier
    execute if data storage score_damage: Argument{BypassResistance:0b} if data entity @s ActiveEffects[{Id:11}] run scoreboard players add $Resistance ScoreDamageCore 1
    execute if data storage score_damage: Argument{BypassResistance:1b} run scoreboard players set $Resistance ScoreDamageCore 0
# ハイパーアーマー中は耐性エフェクトを強制的に4に設定
    execute if entity @s[tag=PlyArmorHyper] if data storage score_damage: Argument{BypassResistance:0b} if score $Resistance ScoreDamageCore matches ..4 run scoreboard players add $Resistance ScoreDamageCore 4
#> score_damage_mhdp:core/calc_player
#
# 与えるダメージを計算します（MHDP用）

# 物理・属性防御力
    # 物理 = 80 / (80 + Def) * 100
        scoreboard players operation $MhdpDef ScoreDamageCore = @s MhdpPlayerDefence
        scoreboard players operation $CalcDefA ScoreDamageCore = $80 ScoreDamageCore
        scoreboard players operation $CalcDefA ScoreDamageCore *= $100 ScoreDamageCore
        scoreboard players operation $CalcDefB ScoreDamageCore = $80 ScoreDamageCore
        scoreboard players operation $CalcDefB ScoreDamageCore += $MhdpDef ScoreDamageCore
        scoreboard players operation $CalcDefA ScoreDamageCore /= $CalcDefB ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore *= $CalcDefA ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
    # 属性 = Res / 100
        scoreboard players set $CalcResA ScoreDamageCore 0
        execute if data storage mhdp_core:temp Temp.Damage{Type:1} run scoreboard players operation $CalcResA ScoreDamageCore = @s MhdpPlayerResistFire
        execute if data storage mhdp_core:temp Temp.Damage{Type:2} run scoreboard players operation $CalcResA ScoreDamageCore = @s MhdpPlayerResistWater
        execute if data storage mhdp_core:temp Temp.Damage{Type:3} run scoreboard players operation $CalcResA ScoreDamageCore = @s MhdpPlayerResistThunder
        execute if data storage mhdp_core:temp Temp.Damage{Type:4} run scoreboard players operation $CalcResA ScoreDamageCore = @s MhdpPlayerResistIce
        execute if data storage mhdp_core:temp Temp.Damage{Type:5} run scoreboard players operation $CalcResA ScoreDamageCore = @s MhdpPlayerResistDragon
        scoreboard players operation $CalcResB ScoreDamageCore = $100 ScoreDamageCore
        scoreboard players operation $CalcResB ScoreDamageCore -= $CalcResA ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore *= $CalcResB ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore

# スキル
    # 精霊の加護
        # LV1
        # LV2

# Reset
    scoreboard players reset $CalcDefA ScoreDamageCore
    scoreboard players reset $CalcDefB ScoreDamageCore
    scoreboard players reset $CalcResA ScoreDamageCore
    scoreboard players reset $CalcResB ScoreDamageCore

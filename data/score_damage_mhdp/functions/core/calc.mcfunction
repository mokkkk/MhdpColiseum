#> score_damage_mhdp:core/calc
#
# 与えるダメージを計算します
#
# @within function score_damage:core/attack

#> Temp
# @private
    #declare score_holder $CalcF

# 計算式:
# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25) * (1 - (min(20, cappedEPF) / 25)) * (1 - min(5, resistanceLv) / 5)

# 耐性エフェクトによる軽減計算部
    # $Resistance *= min(5, $Resistance) * 10 / 5
        scoreboard players operation $Resistance ScoreDamageCore < $5 ScoreDamageCore
        scoreboard players operation $Resistance ScoreDamageCore *= $20 ScoreDamageCore
    # $CalcF = 1 * 10 - $Resistance( * 10)
        scoreboard players operation $CalcF ScoreDamageCore = $100 ScoreDamageCore
        scoreboard players operation $CalcF ScoreDamageCore -= $Resistance ScoreDamageCore
    # $damage = $damage( * 100 * 100) * $CalcF( * 10) / 10
        scoreboard players operation $Damage ScoreDamageCore *= $CalcF ScoreDamageCore

# MHDP処理
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
        scoreboard players set $CaldResA ScoreDamageCore 0
        execute if data storage mhdp_core:temp Temp.Damage{Type:1} run scoreboard players operation $CaldResA ScoreDamageCore = @s MhdpPlayerResistFire
        execute if data storage mhdp_core:temp Temp.Damage{Type:2} run scoreboard players operation $CaldResA ScoreDamageCore = @s MhdpPlayerResistWater
        execute if data storage mhdp_core:temp Temp.Damage{Type:3} run scoreboard players operation $CaldResA ScoreDamageCore = @s MhdpPlayerResistThunder
        execute if data storage mhdp_core:temp Temp.Damage{Type:4} run scoreboard players operation $CaldResA ScoreDamageCore = @s MhdpPlayerResistIce
        execute if data storage mhdp_core:temp Temp.Damage{Type:5} run scoreboard players operation $CaldResA ScoreDamageCore = @s MhdpPlayerResistDragon
        scoreboard players operation $CaldResB ScoreDamageCore = $100 ScoreDamageCore
        scoreboard players operation $CaldResB ScoreDamageCore -= $CalcDefA ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore *= $CaldResB ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
    
# Reset
    scoreboard players reset $CalcF ScoreDamageCore
    scoreboard players reset $DefensePoints ScoreDamageCore
    scoreboard players reset $Toughness ScoreDamageCore
    scoreboard players reset $EPF ScoreDamageCore
    scoreboard players reset $CalcDefA ScoreDamageCore
    scoreboard players reset $CalcDefB ScoreDamageCore
    scoreboard players reset $CaldResA ScoreDamageCore
    scoreboard players reset $CaldResB ScoreDamageCore
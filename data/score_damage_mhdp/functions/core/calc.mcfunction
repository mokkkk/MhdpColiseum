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
    execute if entity @s[type=player] run function score_damage_mhdp:core/calc_player
    
# Reset
    scoreboard players reset $CalcF ScoreDamageCore
    scoreboard players reset $DefensePoints ScoreDamageCore
    scoreboard players reset $Toughness ScoreDamageCore
    scoreboard players reset $EPF ScoreDamageCore

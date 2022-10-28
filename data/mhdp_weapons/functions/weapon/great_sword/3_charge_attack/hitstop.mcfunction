#> mhdp_weapons:weapon/great_sword/3_charge_attack/hitstop
#
# 大剣：溜め斬り ヒットストップ長さ決定

# 決定
    execute if entity @s[tag=AttackHit] if score #mhdp_temp_def MhdpCore matches ..39 run tag @s remove AttackHit
    execute if entity @s[tag=AttackHit] if score #mhdp_temp_def MhdpCore matches 40..69 run tag @s add HitStopNormal
    execute if entity @s[tag=AttackHit] if score #mhdp_temp_def MhdpCore matches 70.. run tag @s add HitStopLong
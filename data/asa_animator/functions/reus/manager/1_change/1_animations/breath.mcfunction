
# 距離確認
execute if entity @e[tag=ReusAttackTarget,distance=..12] run tag @s add AnmBStep
execute unless entity @s[tag=AnmBStep] run tag @s add AnmBreath

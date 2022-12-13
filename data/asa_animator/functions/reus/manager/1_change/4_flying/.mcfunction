#> asa_animator:reus/manager/1_change/4_flying/
#
# 火竜 地上行動

# 近
    execute if entity @e[tag=ReusAttackTarget,distance=..10] run function asa_animator:reus/manager/1_change/4_flying/near

# 中
    execute if predicate asa_animator:reus/stay if entity @e[tag=ReusAttackTarget,distance=..22] run function asa_animator:reus/manager/1_change/4_flying/middle

# 遠
    execute if predicate asa_animator:reus/stay run function asa_animator:reus/manager/1_change/4_flying/far

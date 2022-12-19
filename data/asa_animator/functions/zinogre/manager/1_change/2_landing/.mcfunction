#> asa_animator:zinogre/manager/1_change/2_landing/
#
# 雷狼竜 地上行動

# 近
    # execute if predicate asa_animator:zinogre/stay if entity @e[tag=ZinogreAttackTarget,distance=..10] run function asa_animator:zinogre/manager/1_change/2_landing/near

# 中
    # execute if predicate asa_animator:zinogre/stay if entity @e[tag=ZinogreAttackTarget,distance=..22] run function asa_animator:zinogre/manager/1_change/2_landing/middle

# 遠
    # execute if predicate asa_animator:zinogre/stay run function asa_animator:zinogre/manager/1_change/2_landing/far

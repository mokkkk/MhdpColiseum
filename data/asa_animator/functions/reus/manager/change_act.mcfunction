
# 怒り変化
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 1

# 地上
execute unless score #mhdp_reus_actcount_phase AsaMatrix matches 6.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_normal/main
# 地上→飛行
execute if score #mhdp_reus_actcount_phase AsaMatrix matches 6.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_phase/land_to_fly
# 飛行中
execute unless score #mhdp_reus_actcount_phase AsaMatrix matches 8.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_flying/main
# 飛行→地上
execute if score #mhdp_reus_actcount_phase AsaMatrix matches 8.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_phase/fly_to_land

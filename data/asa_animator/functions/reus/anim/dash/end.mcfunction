scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset

# 再生回数
    scoreboard players remove #mhdp_reus_dashcount AsaMatrix 1

# 遷移
    execute if score #mhdp_reus_dashcount AsaMatrix matches ..0 run tag @s remove AnmDash
    execute if score #mhdp_reus_dashcount AsaMatrix matches ..0 run tag @s add AnmDashBite

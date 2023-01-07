scoreboard players set @s AsaMatrix 0

# 再生回数
    scoreboard players remove #mhdp_reus_dashcount AsaMatrix 1

# 遷移
    execute if score #mhdp_reus_dashcount AsaMatrix matches ..0 run tag @s remove AnmDash
    execute if score #mhdp_reus_dashcount AsaMatrix matches ..0 run tag @s add AnmDashBite

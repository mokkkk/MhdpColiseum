scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashStart
tag @s add AnmDash

# アニメーション再生回数決定
    scoreboard players set #mhdp_reus_dashcount AsaMatrix 4
    execute if entity @e[tag=ReusAttackTarget,distance=..39] run scoreboard players set #mhdp_reus_dashcount AsaMatrix 3
    execute if entity @e[tag=ReusAttackTarget,distance=..26] run scoreboard players set #mhdp_reus_dashcount AsaMatrix 2
    execute if entity @e[tag=ReusAttackTarget,distance=..13] run scoreboard players set #mhdp_reus_dashcount AsaMatrix 1

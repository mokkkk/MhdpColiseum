execute as @e[type=slime,tag=MonsterParts,distance=..3] run tag @s add Targets
particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
execute if block ~ ~-1 ~ #asa_animator:no_collision positioned ~ ~-1 ~ run function mhdp_weapons:weapon/short_sword/10_fall/move_
execute unless block ~ ~-1 ~ #asa_animator:no_collision run tp @s ~ ~ ~
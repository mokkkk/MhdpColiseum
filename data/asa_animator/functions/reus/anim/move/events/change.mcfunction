scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove
function asa_animator:reus/manager/1_change/1_animations/tail_spin
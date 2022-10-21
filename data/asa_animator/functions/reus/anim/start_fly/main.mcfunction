# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/start_fly/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/start_fly/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.06 ^0.2 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/start_fly/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.5 ^0.2 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/start_fly/keyframes/2
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0.1 ^0.1
execute if entity @s[scores={AsaMatrix=21..}] run function asa_animator:reus/anim/start_fly/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=5}] run particle block grass_block ~ ~0.1 ~ 1 0.1 1 0 10
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=10}] as @a[distance=0..5] run function mhdp_core:player/damage/knockback/wind/1
execute if entity @s[scores={AsaMatrix=10}] as @a[distance=5.1..8] run function mhdp_core:player/damage/knockback/wind/0

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/manager/model/change_to_fly
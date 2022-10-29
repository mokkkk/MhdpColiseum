# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/tail_whip/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/tail_whip/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:diablos/anim/tail_whip/keyframes/1
execute if entity @s[scores={AsaMatrix=9..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/tail_whip/keyframes/2
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^-0.02 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/tail_whip/keyframes/3
execute if entity @s[scores={AsaMatrix=21..26}] run tp @s ^0 ^0.01666667 ^0 ~4 ~
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:diablos/anim/tail_whip/keyframes/4
execute if entity @s[scores={AsaMatrix=27..30}] run tp @s ^0 ^0 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:diablos/anim/tail_whip/keyframes/5
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:diablos/anim/tail_whip/keyframes/6
execute if entity @s[scores={AsaMatrix=36..40}] run tp @s ^0 ^-0.02 ^0 ~-3 ~
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:diablos/anim/tail_whip/keyframes/7
execute if entity @s[scores={AsaMatrix=41..46}] run tp @s ^0 ^0.01666667 ^0 ~-4 ~
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:diablos/anim/tail_whip/keyframes/8
execute if entity @s[scores={AsaMatrix=47..50}] run tp @s ^0 ^0 ^0 ~-4 ~
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:diablos/anim/tail_whip/keyframes/9
execute if entity @s[scores={AsaMatrix=51..57}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:diablos/anim/tail_whip/keyframes/10
execute if entity @s[scores={AsaMatrix=58..67}] run tp @s ^0 ^0 ^0 ~3 ~
execute if entity @s[scores={AsaMatrix=68..}] run function asa_animator:diablos/anim/tail_whip/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=16..30}] at @e[type=armor_stand,tag=DiablosParts,tag=Tail2] run function asa_animator:diablos/anim/tail_whip/events/damage
execute if entity @s[scores={AsaMatrix=36..50}] at @e[type=armor_stand,tag=DiablosParts,tag=Tail2] run function asa_animator:diablos/anim/tail_whip/events/damage

execute if entity @s[scores={AsaMatrix=20}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=40}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=21..26}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=41..46}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
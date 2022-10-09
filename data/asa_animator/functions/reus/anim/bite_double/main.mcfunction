# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/bite_double/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/bite_double/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^0.3 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/bite_double/keyframes/1
execute if entity @s[scores={AsaMatrix=8..10}] run tp @s ^0 ^0 ^0.1 ~1 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/bite_double/keyframes/2
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^0 ^0.1142857
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/bite_double/keyframes/3
execute if entity @s[scores={AsaMatrix=18..22}] run tp @s ^0 ^0 ^ ~0.5 ~
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/bite_double/keyframes/4
execute if entity @s[scores={AsaMatrix=23..27}] run tp @s ^0 ^0 ^-0.16 ~-1 ~
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/bite_double/keyframes/5
execute if entity @s[scores={AsaMatrix=28..30}] run tp @s ^0 ^0 ^0.2 ~-1 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/bite_double/keyframes/6
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0 ^0.1142857
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:reus/anim/bite_double/keyframes/7
execute if entity @s[scores={AsaMatrix=38..47}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/bite_double/keyframes/8
execute if entity @s[scores={AsaMatrix=48..55}] run tp @s ^0 ^0 ^-0.125
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:reus/anim/bite_double/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.8
execute if entity @s[scores={AsaMatrix=23}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.6

# 攻撃
execute if entity @s[scores={AsaMatrix=1..5}] run function asa_animator:reus/manager/rotate_fast
execute if entity @s[scores={AsaMatrix=14}] positioned ^ ^1 ^5 run function asa_animator:reus/anim/bite/events/damage
execute if entity @s[scores={AsaMatrix=23..27}] run function asa_animator:reus/manager/rotate
execute if entity @s[scores={AsaMatrix=34}] positioned ^ ^1 ^5 run function asa_animator:reus/anim/bite/events/damage

execute if entity @s[scores={AsaMatrix=1..5}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
execute if entity @s[scores={AsaMatrix=1..5}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AsaMatrix=23..27}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
execute if entity @s[scores={AsaMatrix=23..27}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
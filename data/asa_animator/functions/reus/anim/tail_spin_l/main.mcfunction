# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/tail_spin_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/tail_spin_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^-0.01666667 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/tail_spin_l/keyframes/1
execute if entity @s[scores={AsaMatrix=7..17}] run tp @s ^0 ^0.009090909 ^0 ~3 ~
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/tail_spin_l/keyframes/2
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^-0.1 ^-0.01428571 ^-0.1 ~-21 ~
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/tail_spin_l/keyframes/3
execute if entity @s[scores={AsaMatrix=25..33}] run tp @s ^-0.1 ^-0.01111111 ^-0.1 ~-7 ~
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:reus/anim/tail_spin_l/keyframes/4
execute if entity @s[scores={AsaMatrix=34..44}] run tp @s ^0 ^-0.00909091 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:reus/anim/tail_spin_l/keyframes/5
execute if entity @s[scores={AsaMatrix=45..57}] run tp @s ^0 ^0.02307692 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:reus/anim/tail_spin_l/keyframes/6
execute if entity @s[scores={AsaMatrix=58..64}] run tp @s ^-0.1 ^-0.01428571 ^-0.1 ~-21 ~
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:reus/anim/tail_spin_l/keyframes/7
execute if entity @s[scores={AsaMatrix=65..73}] run tp @s ^-0.1 ^-0.01111111 ^-0.1 ~-7 ~
execute if entity @s[scores={AsaMatrix=74}] run function asa_animator:reus/anim/tail_spin_l/keyframes/8
execute if entity @s[scores={AsaMatrix=74..86}] run tp @s ^0 ^-0.01538462 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:reus/anim/tail_spin_l/keyframes/9
execute if entity @s[scores={AsaMatrix=87..99}] run tp @s ^0 ^0.03076923 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=100..}] run function asa_animator:reus/anim/tail_spin_l/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=17..21}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=57..61}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=17}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=57}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5

# 攻撃
    execute if entity @s[scores={AsaMatrix=19..29}] run function asa_animator:reus/anim/tail_spin_l/events/damage
    execute if entity @s[scores={AsaMatrix=59..69}] run function asa_animator:reus/anim/tail_spin_l/events/damage

# 高度調整
    execute if entity @s[scores={AsaMatrix=1..11}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=1..11}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=74..}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=74..}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

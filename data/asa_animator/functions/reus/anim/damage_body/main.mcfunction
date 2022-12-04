# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/damage_body/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/damage_body/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^-0.08333334 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/damage_body/keyframes/1
execute if entity @s[scores={AsaMatrix=7..13}] run tp @s ^0 ^-0.02142857 ^-0.03571429
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/damage_body/keyframes/2
execute if entity @s[scores={AsaMatrix=14..23}] run tp @s ^0 ^-0.015 ^-0.005000001
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/damage_body/keyframes/3
execute if entity @s[scores={AsaMatrix=24..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/anim/damage_body/keyframes/4
execute if entity @s[scores={AsaMatrix=36..47}] run tp @s ^0 ^0.0125 ^0.03333334
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/damage_body/keyframes/5
execute if entity @s[scores={AsaMatrix=48..60}] run tp @s ^0 ^0.01153846 ^0.03076923
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:reus/anim/damage_body/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 演出
    execute if entity @s[scores={AsaMatrix=1..3}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=23}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=35}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

    execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 0.5 0.7 0.5
    execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 0.5 0.82 0.5

# 高度調整
    execute if entity @s[scores={AsaMatrix=1..6}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if entity @s[scores={AsaMatrix=1..6}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

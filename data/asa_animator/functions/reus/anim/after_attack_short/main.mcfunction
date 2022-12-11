# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/after_attack_short/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/after_attack_short/keyframes/0
execute if entity @s[scores={AsaMatrix=1..3}] run tp @s ^0 ^0 ^0.03333334
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/after_attack_short/keyframes/1
execute if entity @s[scores={AsaMatrix=4..6}] run tp @s ^0 ^0 ^0.03333334
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/after_attack_short/keyframes/2
execute if entity @s[scores={AsaMatrix=7..18}] run tp @s ^0 ^-0.008333334 ^-0.008333334
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/after_attack_short/keyframes/3
execute if entity @s[scores={AsaMatrix=19..22}] run tp @s ^0 ^0.025 ^0.0875
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/after_attack_short/keyframes/4
execute if entity @s[scores={AsaMatrix=23..27}] run tp @s ^0 ^-0.02 ^0.18
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/after_attack_short/keyframes/5
execute if entity @s[scores={AsaMatrix=28..42}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/after_attack_short/keyframes/6
execute if entity @s[scores={AsaMatrix=43..49}] run tp @s ^0 ^0.007142857 ^-0.07142857
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:reus/anim/after_attack_short/keyframes/7
execute if entity @s[scores={AsaMatrix=50..57}] run tp @s ^0 ^0.00625 ^-0.075
execute if entity @s[scores={AsaMatrix=58..}] run function asa_animator:reus/anim/after_attack_short/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=19}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=42}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=28..30}] run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.82 1

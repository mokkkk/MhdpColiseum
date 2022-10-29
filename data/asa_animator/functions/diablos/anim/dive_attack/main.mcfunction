# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dive_attack/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dive_attack/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^1.4 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim/dive_attack/keyframes/1
execute if entity @s[scores={AsaMatrix=6..13}] run tp @s ^0 ^0.0625 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:diablos/anim/dive_attack/keyframes/2
execute if entity @s[scores={AsaMatrix=14..20}] run tp @s ^0 ^0.07142857 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/dive_attack/keyframes/3
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0 ^0.1285714 ^0.05714286
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:diablos/anim/dive_attack/keyframes/4
execute if entity @s[scores={AsaMatrix=28..38}] run tp @s ^0 ^0.2272727 ^0.1363636
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:diablos/anim/dive_attack/keyframes/5
execute if entity @s[scores={AsaMatrix=39..51}] run tp @s ^0 ^0.02307692 ^0.09230768
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:diablos/anim/dive_attack/keyframes/6
execute if entity @s[scores={AsaMatrix=52..64}] run tp @s ^0 ^0.02307692 ^0.06923078
execute if entity @s[scores={AsaMatrix=65..}] run function asa_animator:diablos/anim/dive_attack/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 攻撃
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:diablos/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=8}] positioned ~ ~3 ~ run function asa_animator:diablos/anim/dive_attack/events/damage

# 効果音
execute if entity @s[scores={AsaMatrix=6}] run playsound entity.wither.break_block master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=20}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=38}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=51}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=20..51}] run particle block sand ~ ~2 ~ 2 1 2 0 20

execute if entity @s[scores={AsaMatrix=52..64}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=52..64}] at @s positioned ~ ~5 ~ run function asa_animator:general/check_ground
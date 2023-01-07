# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.00 ^0.02 ^0.00
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.00 ^-0.04 ^0.00
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0.00 ^0.04 ^0.00
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0.00 ^-0.04 ^0.00
execute if entity @s[scores={AsaMatrix=21..26}] run tp @s ^0.00 ^0.02 ^0.00

# 移動
    function asa_animator:reus/manager/4_general/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=10}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=20}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    
# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/turn_l/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/turn_l/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/turn_l/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/turn_l/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/turn_l/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/turn_l/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/turn_l/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/turn_l/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/turn_l/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/turn_l/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/turn_l/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/turn_l/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/turn_l/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/turn_l/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/turn_l/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/turn_l/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/turn_l/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/turn_l/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/turn_l/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/turn_l/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/turn_l/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/turn_l/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/turn_l/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/turn_l/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/turn_l/keyframes/25
execute if entity @s[scores={AsaMatrix=26..}] run function asa_animator:reus/anim/turn_l/keyframes/26
execute if entity @s[scores={AsaMatrix=27..}] run function asa_animator:reus/anim/turn_l/end
function asa_animator:reus/model

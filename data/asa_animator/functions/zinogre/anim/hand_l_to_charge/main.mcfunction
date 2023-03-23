# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.00 ^0.05 ^0.00
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.00 ^0.00 ^0.00
execute if entity @s[scores={AsaMatrix=11..18}] run tp @s ^0.00 ^0.03 ^0.00
execute if entity @s[scores={AsaMatrix=19..38}] run tp @s ^0.00 ^0.01 ^0.00
execute if entity @s[scores={AsaMatrix=39..48}] run tp @s ^0.00 ^-0.01 ^0.00
execute if entity @s[scores={AsaMatrix=49..58}] run tp @s ^0.00 ^-0.01 ^0.00

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=38}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=11}] run playsound block.beacon.activate master @a ~ ~ ~ 3 2
    execute if entity @s[scores={AsaMatrix=11}] run playsound block.beacon.activate master @a ~ ~ ~ 3 1.7
    execute if entity @s[scores={AsaMatrix=11..38}] run particle dust 1 1000000000 1000000000 1 ~ ~3 ~ 3 3 3 0 5
    execute if entity @s[scores={AsaMatrix=11..30}] positioned ^ ^3 ^1 run function asa_animator:zinogre/anim/charge/events/particle
    execute if entity @s[scores={AsaMatrix=48}] run particle flash ~ ~3 ~ 2 2 2 0 20
    
# Keyframe Functions
function asa_animator:zinogre/get_data
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/25
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/26
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/27
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/28
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/29
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/30
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/31
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/32
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/33
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/34
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/35
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/36
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/37
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/38
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/39
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/40
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/41
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/42
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/43
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/44
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/45
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/46
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/47
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/48
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/49
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/50
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/51
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/52
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/53
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/54
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/55
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/56
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/57
execute if entity @s[scores={AsaMatrix=58..}] run function asa_animator:zinogre/anim/hand_l_to_charge/keyframes/58
function asa_animator:zinogre/model
execute if entity @s[scores={AsaMatrix=59..}] run function asa_animator:zinogre/anim/hand_l_to_charge/end

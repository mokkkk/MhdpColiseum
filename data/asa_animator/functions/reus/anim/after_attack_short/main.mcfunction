# This function was generated by ArmorstandAnimator
# Main Functions
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1..3}] run tp @s ^0.00 ^0.00 ^0.03
execute if entity @s[scores={AsaMatrix=4..6}] run tp @s ^0.00 ^0.00 ^0.03
execute if entity @s[scores={AsaMatrix=7..18}] run tp @s ^0.00 ^-0.01 ^-0.01
execute if entity @s[scores={AsaMatrix=19..22}] run tp @s ^0.00 ^0.03 ^0.09
execute if entity @s[scores={AsaMatrix=23..27}] run tp @s ^0.00 ^-0.02 ^0.13
execute if entity @s[scores={AsaMatrix=28..42}] run tp @s ^0.00 ^0.00 ^0.00
execute if entity @s[scores={AsaMatrix=43..49}] run tp @s ^0.00 ^0.01 ^-0.07
execute if entity @s[scores={AsaMatrix=50..57}] run tp @s ^0.00 ^0.01 ^-0.08

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=19}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=42}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=28..30}] run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.82 1
    
# Keyframe Functions
function asa_animator:reus/get_data
execute if entity @s[scores={AsaMatrix=..1}] run function asa_animator:reus/anim/after_attack_short/keyframes/1
execute if entity @s[scores={AsaMatrix=2}] run function asa_animator:reus/anim/after_attack_short/keyframes/2
execute if entity @s[scores={AsaMatrix=3}] run function asa_animator:reus/anim/after_attack_short/keyframes/3
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:reus/anim/after_attack_short/keyframes/4
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:reus/anim/after_attack_short/keyframes/5
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reus/anim/after_attack_short/keyframes/6
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reus/anim/after_attack_short/keyframes/7
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:reus/anim/after_attack_short/keyframes/8
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/after_attack_short/keyframes/9
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/after_attack_short/keyframes/10
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/after_attack_short/keyframes/11
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:reus/anim/after_attack_short/keyframes/12
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/after_attack_short/keyframes/13
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:reus/anim/after_attack_short/keyframes/14
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:reus/anim/after_attack_short/keyframes/15
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/after_attack_short/keyframes/16
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/after_attack_short/keyframes/17
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/after_attack_short/keyframes/18
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/after_attack_short/keyframes/19
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/after_attack_short/keyframes/20
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/after_attack_short/keyframes/21
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/after_attack_short/keyframes/22
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/after_attack_short/keyframes/23
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/after_attack_short/keyframes/24
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/after_attack_short/keyframes/25
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/after_attack_short/keyframes/26
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:reus/anim/after_attack_short/keyframes/27
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/after_attack_short/keyframes/28
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:reus/anim/after_attack_short/keyframes/29
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:reus/anim/after_attack_short/keyframes/30
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/after_attack_short/keyframes/31
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:reus/anim/after_attack_short/keyframes/32
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:reus/anim/after_attack_short/keyframes/33
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:reus/anim/after_attack_short/keyframes/34
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:reus/anim/after_attack_short/keyframes/35
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/anim/after_attack_short/keyframes/36
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:reus/anim/after_attack_short/keyframes/37
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:reus/anim/after_attack_short/keyframes/38
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:reus/anim/after_attack_short/keyframes/39
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:reus/anim/after_attack_short/keyframes/40
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:reus/anim/after_attack_short/keyframes/41
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:reus/anim/after_attack_short/keyframes/42
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/after_attack_short/keyframes/43
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:reus/anim/after_attack_short/keyframes/44
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:reus/anim/after_attack_short/keyframes/45
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:reus/anim/after_attack_short/keyframes/46
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:reus/anim/after_attack_short/keyframes/47
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/after_attack_short/keyframes/48
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:reus/anim/after_attack_short/keyframes/49
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:reus/anim/after_attack_short/keyframes/50
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:reus/anim/after_attack_short/keyframes/51
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:reus/anim/after_attack_short/keyframes/52
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:reus/anim/after_attack_short/keyframes/53
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:reus/anim/after_attack_short/keyframes/54
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:reus/anim/after_attack_short/keyframes/55
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:reus/anim/after_attack_short/keyframes/56
execute if entity @s[scores={AsaMatrix=57..}] run function asa_animator:reus/anim/after_attack_short/keyframes/57
execute if entity @s[scores={AsaMatrix=58..}] run function asa_animator:reus/anim/after_attack_short/end
function asa_animator:reus/model

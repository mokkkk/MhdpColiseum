# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/bite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/bite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..9}] run tp @s ^0 ^0 ^0.02222222 ~1 ~
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:reus/anim/bite/keyframes/1
execute if entity @s[scores={AsaMatrix=10..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reus/anim/bite/keyframes/2
execute if entity @s[scores={AsaMatrix=16..21}] run tp @s ^0 ^0 ^0.1333333
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:reus/anim/bite/keyframes/3
execute if entity @s[scores={AsaMatrix=22..31}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:reus/anim/bite/keyframes/4
execute if entity @s[scores={AsaMatrix=32..40}] run tp @s ^0 ^0 ^-0.08888889 ~-1 ~
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:reus/anim/bite/keyframes/5
execute if entity @s[scores={AsaMatrix=41..44}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:reus/anim/bite/keyframes/6
execute if entity @s[scores={AsaMatrix=45..50}] run tp @s ^0 ^0 ^0.1333333
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:reus/anim/bite/keyframes/7
execute if entity @s[scores={AsaMatrix=51..67}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=68}] run function asa_animator:reus/anim/bite/keyframes/8
execute if entity @s[scores={AsaMatrix=68..75}] run tp @s ^0 ^0 ^-0.0625
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:reus/anim/bite/keyframes/9
execute if entity @s[scores={AsaMatrix=76..85}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=86..}] run function asa_animator:reus/anim/bite/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..3}] run function asa_animator:reus/manager/4_general/rotate
    execute if entity @s[scores={AsaMatrix=15..21}] at @s run tp @s ^ ^ ^0.45 ~0.1 ~
    execute if entity @s[scores={AsaMatrix=31..40}] at @s run tp @s ^ ^ ^0.1
    execute if entity @s[scores={AsaMatrix=44..50}] at @s run tp @s ^ ^ ^0.45 ~-0.1 ~

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=31}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=67}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# 攻撃
    execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/bite/events/damage
    execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/bite/events/damage

# 高度調整
    execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 遷移
    # 敵が体側面で回避した場合
        execute if entity @s[scores={AsaMatrix=30}] if predicate asa_animator:random/070 positioned ^ ^ ^-2 if entity @a[tag=ReusAttackTarget,distance=..6] at @s run function asa_animator:reus/anim/bite/events/change

# 6 Damage

# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:12.0f,Knockback:2,Guard:-100,Type:1,Blight:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3.5] run function asa_animator:reus/anim/flying_breath_large/events/damage_sub

particle explosion ~ ~ ~ 0.8 0.8 0.8 0 7 force
particle lava ~ ~ ~ 0 0 0 0 2 force
kill @s
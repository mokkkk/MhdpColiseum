# 4 - 6.5 Damage

# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:20,Type:0,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 8.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 13.0f
execute as @a[distance=0..8.2] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..6.5] run function asa_animator:reus/anim/jump/events/damage_sub

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~ ~ 0.5 0 0.5 0 20
particle explosion ~ ~0.5 ~ 2 0.5 2 0 30
tag @s remove IsFlying
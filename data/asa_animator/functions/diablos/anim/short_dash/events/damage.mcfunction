# 4 - 5 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:60,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 8.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 10.0f

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run tag @s add MhdpDHit
execute as @e[tag=MhdpDHit,distance=0..12] run function asa_animator:diablos/anim/short_dash/events/damage_sub
tag @e[tag=MhdpDHit,distance=0..12] remove MhdpDHit
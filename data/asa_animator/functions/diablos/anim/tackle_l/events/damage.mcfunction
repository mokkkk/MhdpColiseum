# 4 - 6 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:30,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 8.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
    
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute positioned ^ ^ ^-3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute as @e[tag=MhdpDHit,distance=..15] run function asa_animator:diablos/anim/tackle_l/events/damage_sub
tag @e[tag=MhdpDHit,distance=..15] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
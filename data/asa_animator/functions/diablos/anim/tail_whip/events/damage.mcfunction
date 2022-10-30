# 2 - 3 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:1,Guard:30,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 4.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 6.0f

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_whip/events/damage_sub

particle block sand ~ ~0.1 ~ 1 0 1 0 3
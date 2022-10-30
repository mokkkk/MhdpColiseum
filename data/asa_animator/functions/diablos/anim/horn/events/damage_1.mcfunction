# 4 - 6 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:30,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 8.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..6] run function asa_animator:diablos/anim/horn/events/damage_sub_1

particle explosion ~ ~0.5 ~ 2 0.5 2 0 20
playsound entity.wither.break_block master @a ~ ~ ~ 3 0.7
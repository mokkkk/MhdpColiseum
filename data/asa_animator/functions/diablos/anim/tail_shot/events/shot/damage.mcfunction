# 3 - 5 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:1,Guard:60,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 6.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 10.0f
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_shot/events/shot/damage_sub

playsound block.stone.break master @a ~ ~ ~ 2 1
particle explosion ~ ~ ~ 0.5 0.5 0.5 0 3
particle block sandstone ~ ~ ~ 0.1 0.1 0.1 0 30
kill @s
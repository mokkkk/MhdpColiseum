# 4.5 - 6 
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:30,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 9.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_shot/events/damage_sub

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8
particle explosion ~ ~ ~ 2 0 2 0 15
particle block sand ~ ~ ~ 1 0.5 1 1 50

execute positioned ~ ~1 ~ rotated ~-40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~ -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
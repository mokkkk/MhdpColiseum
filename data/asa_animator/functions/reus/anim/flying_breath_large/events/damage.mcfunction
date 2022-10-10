# 6 - 8 Damage

# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:-100,Type:1,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 16.0f
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3] run function asa_animator:reus/anim/flying_breath_large/events/damage_sub

particle explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
particle lava ~ ~ ~ 0 0 0 0 2 force
kill @s
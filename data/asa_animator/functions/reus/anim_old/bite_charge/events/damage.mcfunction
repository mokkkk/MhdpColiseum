# 6 - 7.5 Damage

# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:-10,Type:1,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 15.0f
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..6] run function asa_animator:reus/anim/bite_charge/events/damage_sub

playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0.6 0.6 0.6 0.5 15
particle flame ~ ~ ~ 0.6 0.6 0.6 0.05 15
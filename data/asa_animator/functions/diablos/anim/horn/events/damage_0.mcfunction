# 1 - 2 Damage
# 基本ダメージ
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:0,Guard:100,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 2.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 4.0f

execute unless entity @s[tag=DestroyHead] as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/horn/events/damage_sub_0

playsound item.trident.hit master @a ~ ~ ~ 3 0.5
playsound entity.hoglin.step master @a ~ ~ ~ 3 0.5
# 後方尻尾薙ぎ払い
# Normal：5（10 * 0.5）
# Hard：7（20 * 0.34）
# Guard：2（ガード可能）
# 帯電時雷属性

# ダメージ設定
    execute if entity @s[tag=!IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:2,Type:0,Blight:0b}
    execute if entity @s[tag=IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:2,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 10.0f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 11.0f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 20.6f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 23.2f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 25.0f

# ターゲット設定
    execute positioned ^ ^ ^2 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=..5.5] add Target

# 攻撃処理
    execute positioned as @s as @e[tag=Target] run function asa_animator:zinogre/anim/tail_whip_l/events/damage_sub
    tag @e[tag=Target] remove Target

execute rotated ~ ~ run function asa_animator:zinogre/anim/sault_l/events/particle
execute rotated ~4 ~ run function asa_animator:zinogre/anim/sault_l/events/particle
execute rotated ~8 ~ run function asa_animator:zinogre/anim/sault_l/events/particle
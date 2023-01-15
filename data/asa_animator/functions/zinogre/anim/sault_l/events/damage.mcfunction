# サマーソルト
# Normal：9（18 * 0.5）
# Hard：15（44 * 0.34）
# Guard：3（大剣ガード可能）
# 帯電時雷属性

# ダメージ設定
    execute if entity @s[tag=!IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:0,Blight:0b}
    execute if entity @s[tag=IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 18.0f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 19.8f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 21.6f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 44.1f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 48.5f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 52.9f

# ターゲット設定
    execute positioned ^ ^ ^2 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..9.5] add Target

# 攻撃処理
    execute positioned as @s as @e[tag=Target] run function asa_animator:zinogre/anim/tail_forward/events/damage_sub
    tag @e[tag=Target] remove Target

execute rotated ~ ~ run function asa_animator:zinogre/anim/sault_l/events/particle
execute rotated ~4 ~ run function asa_animator:zinogre/anim/sault_l/events/particle
execute rotated ~8 ~ run function asa_animator:zinogre/anim/sault_l/events/particle
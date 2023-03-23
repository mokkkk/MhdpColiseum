# サイドタックル
# Normal：7（14 * 0.5）
# Hard：11（38\2 * 0.34）
# Guard：3（大剣ガード可能）
# 帯電時雷属性

# ダメージ設定
    execute if entity @s[tag=!IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:0,Blight:0b}
    execute if entity @s[tag=IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 14.0f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 15.4f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 17.2f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 32.3f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 35.5f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 38.7f

# ターゲット設定
    execute positioned ^ ^ ^-1 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..5.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:zinogre/anim/tackle_l/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 5 ^ ^6 ^ 2 1 2 0 20

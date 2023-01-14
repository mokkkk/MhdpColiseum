# ヘッドバット
# Normal：3（6 * 0.5）
# Hard：5（14 * 0.34）
# Guard：1（ガード可能）
# 属性なし・属性やられなし

# ダメージ設定
    execute if entity @s[tag=!IsAnger] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:1,Guard:1,Type:0,Blight:0b}
    execute if entity @s[tag=IsAnger] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:1,Guard:1,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 6.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 6.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 14.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 14.0f

# ターゲット設定
    execute positioned ^ ^1 ^6 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..4.2] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:zinogre/anim/head/events/damage_sub
    tag @e[tag=Target] remove Target

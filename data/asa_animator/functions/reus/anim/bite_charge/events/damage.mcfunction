# 嚙みつき
# Normal：8（16 * 0.5）
# Hard：22（64 * 0.34）
# Guard：8（ガード不可）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:8,Type:1,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 16.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 64.7f

# ターゲット設定
    execute positioned ^ ^1 ^7.5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,tag=!ReiaParts,tag=!Target,distance=0..6.2] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:reus/anim/bite_charge/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    execute positioned ^ ^1 ^7.5 run function asa_animator:reus/anim/bite_charge/events/effect

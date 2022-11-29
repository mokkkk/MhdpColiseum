# 嚙みつき
# Normal：6（12 * 0.5）
# Hard：11（32 * 0.34）
# Guard：2（ガード可能）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:2,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 12.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 32.0f

# ターゲット設定
    execute positioned ^-1.6 ^1 ^5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,tag=!ReiaParts,tag=!Target,distance=0..3.5] add Target
    execute positioned ^ ^1.3 ^5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,tag=!ReiaParts,tag=!Target,distance=0..3.5] add Target
    execute positioned ^1.6 ^1 ^5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,tag=!ReiaParts,tag=!Target,distance=0..3.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:reus/anim/bite/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2

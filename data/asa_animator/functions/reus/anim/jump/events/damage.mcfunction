# 嚙みつき
# Normal：10（20 * 0.5）
# Hard：15（44 * 0.34）
# Guard：4（ガード性能必要）
# 属性なし・属性やられなし

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:4,Type:0,Blight:0b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 20.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 22.2f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 44.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 48.4f

# ターゲット設定
    execute as @a[distance=7.51..9.2] run function mhdp_core:player/damage/knockback/wind/1
    execute positioned ^ ^ ^ run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,tag=!ReiaParts,tag=!Target,distance=0..7.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:reus/anim/jump/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
    particle block grass ~ ~ ~ 0.5 0 0.5 0 20
    particle explosion ~ ~0.5 ~ 2 0.5 2 0 30
    tag @s remove IsFlying

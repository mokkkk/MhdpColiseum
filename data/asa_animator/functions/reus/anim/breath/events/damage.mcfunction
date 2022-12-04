# 尻尾回転
# Normal：7（14 * 0.5）
# Hard：16（32 * 0.34）
# Guard：2（ガード可能）
# 火属性

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:2,Type:1,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 14.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 47.0f

# 攻撃
    execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..4] run function asa_animator:reus/anim/breath/events/damage_sub

# 演出
    playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    particle lava ~ ~ ~ 0 0 0 0 15
    particle large_smoke ~ ~ ~ 0 0 0 0.2 20

# 終了
    kill @s
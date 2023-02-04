# チャージお手 落雷
# Normal：5（10 * 0.5）
# Hard：7（20 * 0.34）
# Guard：2（ガード可能）
# 雷属性

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:2,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 10.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 11.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 20.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 22.0f

# ターゲット設定
    tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=..4.5] add Target

# 攻撃処理
    execute positioned as @s as @e[tag=Target] run function asa_animator:zinogre/anim/chargehand_l/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    particle explosion ~ ~0.5 ~ 2 0 2 0 10
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.5
    particle dust 1 1000000000 1000000000 5 ^ ^5 ^ 0.5 2 0.5 0 100
    particle flash ^ ^1 ^-4.2 2 2 2 0 30
    particle sneeze ^ ^1 ^-4.2 1 1 1 1 150
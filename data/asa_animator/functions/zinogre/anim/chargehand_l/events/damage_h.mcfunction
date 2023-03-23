# チャージお手
# Normal：10（20 * 0.5）
# Hard：16（47 * 0.34）
# Guard：10（ガード不可）
# 雷属性

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:10,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 20.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 22.0f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 47.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 51.0f

# ターゲット設定
    tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=..4.9] add Target

# 攻撃処理
    execute positioned as @s as @e[tag=Target] run function asa_animator:zinogre/anim/chargehand_l/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
    particle block grass ~ ~0.5 ~ 2 0 2 0 20
    particle explosion ~ ~0.5 ~ 2 0 2 0 10
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8
    particle dust 1 1000000000 1000000000 5 ^ ^5 ^ 0.5 2 0.5 0 100
    execute positioned ^ ^0.5 ^-4 run function asa_animator:zinogre/anim/jump/events/particle
    particle dust 1 1000000000 1000000000 5 ^ ^5 ^-4.2 2 2 2 0 50
    particle flash ^ ^5 ^-4.2 2 2 2 0 30
    particle sneeze ^ ^5 ^-4.2 1 1 1 1 150
    execute positioned ^ ^0.2 ^ run function asa_animator:zinogre/anim/chargehand_l/events/particle_h
    execute positioned ^ ^0.4 ^ rotated ~45 ~ run function asa_animator:zinogre/anim/chargehand_l/events/particle_h
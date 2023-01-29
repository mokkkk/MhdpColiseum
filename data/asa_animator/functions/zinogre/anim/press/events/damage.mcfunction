# ボディプレス
# Normal：9（18 * 0.5）
# Hard：13（38 * 0.34）
# Guard：4（ガード性能必要）
# 帯電時雷属性

# ダメージ設定
    execute if entity @s[tag=!IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:4,Type:0,Blight:0b}
    execute if entity @s[tag=IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:2,Guard:4,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 18.0f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 19.8f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 21.6f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 38.2f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 43.0f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 45.84f

# ターゲット設定
    execute positioned ^ ^ ^2 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..5.5] add Target

# 攻撃処理
    execute positioned as @s as @e[tag=Target] run function asa_animator:zinogre/anim/press/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.hoglin.step master @a ~ ~ ~ 2 0.6
    particle block grass ~ ~1.5 ~ 2 0 2 0 20
    particle explosion ~ ~1.5 ~ 2 0 2 0 10
    execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
    execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8
    execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 5 ^ ^5 ^-4.2 2 2 2 0 50
    execute if entity @s[tag=IsThunder] run particle flash ^ ^5 ^-4.2 2 2 2 0 30
    execute if entity @s[tag=IsThunder] run particle sneeze ^ ^5 ^-4.2 1 1 1 1 150
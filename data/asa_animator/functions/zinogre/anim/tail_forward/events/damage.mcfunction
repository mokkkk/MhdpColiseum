# 尻尾たたきつけ（前方）
# Normal：8（16 * 0.5）
# Hard：12（35 * 0.34）
# Guard：3（大剣ガード可能）
# 帯電時雷属性

# ダメージ設定
    execute if entity @s[tag=!IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:0,Blight:0b}
    execute if entity @s[tag=IsThunder] run data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:3,Guard:3,Type:3,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 16.0f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 17.6f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 19.2f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 35.3f
        execute if entity @s[tag=IsThunder] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 38.8f
        execute if entity @s[tag=IsThunder,tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 42.36f

# ターゲット設定
    execute positioned ^ ^ ^-2 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..3.5] add Target
    execute positioned ^ ^ ^-5 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..3.5] add Target
    execute positioned ^ ^ ^-7 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..2.5] add Target
    execute unless entity @s[tag=DestroyTail] positioned ^ ^ ^-9 run tag @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,tag=!Target,distance=0..2.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function asa_animator:zinogre/anim/tail_forward/events/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 2 0.7
    function asa_animator:zinogre/anim/tail_forward/events/particle_n
    execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/tail_forward/events/particle_t

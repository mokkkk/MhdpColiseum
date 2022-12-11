# 飛行噛みつき 突進判定
# Normal：14（28 * 0.5）
# Hard：19（56 * 0.34）
# Guard：10（ガード不可）
# 属性なし・属性やられなし

# 頭部の位置に合わせる
    execute positioned as @e[type=armor_stand,tag=ReusParts,tag=HeadU,distance=0..7] run tp @s ~ ~ ~

# 効果音等
    playsound item.firecharge.use master @a ~ ~ ~ 3 0.5
    particle flame ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃判定召喚
    summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","A"]}
    summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","B"]}
    summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","C"]}
    summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","D"]}
    scoreboard players set @e[type=marker,tag=ReusChargeFAttack] AsaMatrix 30
# ヒット判定
    execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~-2 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~-4 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~-6 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=D,limit=1] run tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/particle
    execute at @s rotated ~-2 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=B,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/particle
    execute at @s rotated ~-4 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=C,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/particle
    execute at @s rotated ~-6 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=D,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/particle
    execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/attack_tp
    execute at @s rotated ~-2 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=B,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/attack_tp
    execute at @s rotated ~-4 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=C,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/attack_tp
    execute at @s rotated ~-6 ~ as @e[type=marker,tag=ReusChargeFAttack,tag=D,limit=1] run function asa_animator:reus/anim/flying_breath_large/events/attack_tp
    execute as @e[type=marker,tag=ReusChargeFAttack] at @s run function asa_animator:reus/anim/flying_breath_large/events/damage

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set value {Damage:0.0f,Knockback:1,Guard:10,Type:1,Blight:1b}
    # クエストランクノーマル
        execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 28.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 30.3f
    # クエストランクハード
        execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 56.0f
        execute if entity @s[tag=IsAnger] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage mhdp_core:temp Temp.Damage.Damage set value 61.6f 

# 攻撃処理
    execute positioned ^ ^ ^5 as @e[tag=Target] run function asa_animator:reus/anim/dash/events/damage_sub
    tag @e[tag=Target] remove Target

# 回転
    tp @s ~ ~ ~ ~-8 ~
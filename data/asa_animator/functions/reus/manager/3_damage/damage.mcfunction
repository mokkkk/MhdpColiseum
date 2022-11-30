#> asa_animator:reus/manager/3_damage/damage
#
# 火竜 ダメージ処理

# ダメージ適用
    scoreboard players operation #mhdp_reus_health AsaMatrix += #reus_damage AsaMatrix
    scoreboard players operation #mhdp_reus_health_half AsaMatrix += #reus_damage AsaMatrix
# ボスバー設定
    execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix
# 効果音など
    playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
    execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_reus_head_damage AsaMatrix += #reus_damage AsaMatrix
    execute if entity @s[tag=BodyParts] run scoreboard players operation #mhdp_reus_body_damage AsaMatrix += #reus_damage AsaMatrix
    execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_reus_tail_damage AsaMatrix += #reus_damage AsaMatrix
    execute if entity @s[tag=LegParts] run scoreboard players operation #mhdp_reus_leg_damage AsaMatrix += #reus_damage AsaMatrix
    # execute if score #mhdp_reus_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_head
    # execute if score #mhdp_reus_body_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_body
    # execute if score #mhdp_reus_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_tail
    # execute if score #mhdp_reus_leg_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_leg

# 怒り遷移
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix += #reus_damage AsaMatrix
    execute if score #mhdp_reus_anger_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=ReusRoot,tag=IsAnger] as @e[type=armor_stand,tag=ReusRoot] run function asa_animator:reus/manager/start_anger

# 飛行時，怯み値増加
    execute as @e[type=armor_stand,tag=ReusRoot,distance=0..15] if entity @s[tag=IsFlying] run scoreboard players operation #mhdp_reus_flying_damage AsaMatrix += #reus_damage AsaMatrix
    execute if score #mhdp_reus_flying_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] at @s run function asa_animator:reus/manager/start_damage_animation

# 死亡時，アニメーション設定
    execute if score #mhdp_reus_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot] run function asa_animator:reus/manager/3_damage/0_animation/death

# 体力半分時処理
    execute as @e[type=armor_stand,tag=ReusRoot] if entity @s[tag=!HpHalf] if score #mhdp_reus_health_half AsaMatrix matches ..0 run function mhdp_core:phase/3_quest/check/hp_half

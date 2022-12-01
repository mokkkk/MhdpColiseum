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
    execute if entity @s[tag=HeadParts] if score #mhdp_reus_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_head
    execute if entity @s[tag=BodyParts] if score #mhdp_reus_body_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_body
    execute if entity @s[tag=TailParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:1} if score #mhdp_reus_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_tail
    execute if entity @s[tag=LegParts] if score #mhdp_reus_leg_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_leg

# スタンダメージ適用
    execute if entity @s[tag=HeadParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} run scoreboard players operation #mhdp_reus_stun_damage AsaMatrix += #reus_damage AsaMatrix
    execute if entity @s[tag=HeadParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} if score #mhdp_reus_stun_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] run function asa_animator:reus/manager/3_damage/0_animation/damage_stun

# 怒り遷移
    execute if entity @e[type=armor_stand,tag=ReusRoot,tag=!IsAnger] run scoreboard players operation #mhdp_reus_anger_damage AsaMatrix += #reus_damage AsaMatrix
    execute if score #mhdp_reus_anger_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot] if entity @s[tag=!IsAnger] run function asa_animator:reus/manager/3_damage/0_animation/anger

# 飛行時怯み処理
    execute as @e[type=armor_stand,tag=ReusRoot,distance=0..15] if entity @s[tag=IsFlying] run scoreboard players operation #mhdp_reus_flying_damage AsaMatrix += #reus_damage AsaMatrix
    execute if score #mhdp_reus_flying_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot,distance=0..15] at @s run function asa_animator:reus/manager/3_damage/0_animation/damage_flying

# 死亡時，アニメーション設定
    execute if score #mhdp_reus_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReusRoot] run function asa_animator:reus/manager/3_damage/0_animation/death

# 体力半分時処理
    execute as @e[type=armor_stand,tag=ReusRoot] if entity @s[tag=!HpHalf] if score #mhdp_reus_health_half AsaMatrix matches ..0 run function mhdp_core:phase/3_quest/check/hp_half

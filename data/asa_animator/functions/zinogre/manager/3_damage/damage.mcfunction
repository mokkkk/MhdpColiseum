#> asa_animator:zinogre/manager/3_damage/damage
#
# 雷狼竜 ダメージ処理

# ダメージ適用
    scoreboard players operation #mhdp_zinogre_health AsaMatrix += #zinogre_damage AsaMatrix
    scoreboard players operation #mhdp_zinogre_health_half AsaMatrix += #zinogre_damage AsaMatrix
# ボスバー設定
    execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix
# 効果音など
    playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
    execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=BodyParts] run scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=ArmLParts] run scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=ArmRParts] run scoreboard players operation #mhdp_zinogre_armr_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=HeadParts] if score #mhdp_zinogre_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDArmL,tag=!AnmDArmR,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_head
    execute if entity @s[tag=BodyParts] if score #mhdp_zinogre_body_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDArmL,tag=!AnmDArmR,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_body
    execute if entity @s[tag=ArmLParts] if score #mhdp_zinogre_arml_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDArmL,tag=!AnmDArmR,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_arml
    execute if entity @s[tag=ArmRParts] if score #mhdp_zinogre_armr_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDArmL,tag=!AnmDArmR,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_armr
    execute if entity @s[tag=TailParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:1} if score #mhdp_zinogre_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDArmL,tag=!AnmDArmR,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_tail

# スタンダメージ適用
    execute if entity @s[tag=HeadParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} run scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if entity @s[tag=HeadParts] if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} if score #mhdp_zinogre_stun_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15,tag=!AnmDStun,tag=!AnmFStun] run function asa_animator:zinogre/manager/3_damage/0_animation/damage_stun

# 怒り遷移
    execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=!IsAnger] run scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix += #zinogre_damage AsaMatrix
    execute if score #mhdp_zinogre_anger_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot] if entity @s[tag=!IsAnger,tag=!AnmDLegL,tag=!AnmDLegR,tag=!AnmDStun] run function asa_animator:zinogre/manager/3_damage/0_animation/anger

# 超帯電時怯み処理
    # execute as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] if entity @s[tag=IsThunder] run scoreboard players operation #mhdp_zinogre_thunder_damage AsaMatrix += #zinogre_damage AsaMatrix
    # execute if score #mhdp_zinogre_thunder_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] at @s run function asa_animator:zinogre/manager/3_damage/0_animation/damage_thunder

# 死亡時，アニメーション設定
    execute if score #mhdp_zinogre_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot] run function asa_animator:zinogre/manager/3_damage/0_animation/death

# 体力半分時処理
    execute as @e[type=armor_stand,tag=ZinogreRoot] if entity @s[tag=!HpHalf] if score #mhdp_zinogre_health_half AsaMatrix matches ..0 run function mhdp_core:phase/3_quest/check/hp_half

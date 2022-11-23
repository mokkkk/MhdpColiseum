#> mhdp_weapons:weapon/great_sword/4_tackle/attack
#
# 大剣：タックル 攻撃エフェクト
#

# 演出
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 80
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:2,Offhand:1b}

# ダメージ発生
    execute rotated ~ 0 positioned ^ ^ ^1.5 as @e[type=slime,tag=MonsterParts,distance=..3] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
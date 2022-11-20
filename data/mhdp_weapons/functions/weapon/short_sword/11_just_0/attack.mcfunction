#> mhdp_weapons:weapon/short_sword/11_just_0/attack
#
# 片手剣：ジャストラッシュ１ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 100
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

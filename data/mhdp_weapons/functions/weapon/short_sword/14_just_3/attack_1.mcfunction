#> mhdp_weapons:weapon/short_sword/14_just_3/attack_1
#
# 片手剣：ジャストラッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 1.2
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^ ^ ^2.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^ ^ ^3.7 0.2 0.2 0.2 0.05 5

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 100
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 130
    execute if entity @s[tag=WpnSswordJust] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 150
    execute if entity @s[tag=WpnSswordJust] run scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 250
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:weapon/short_sword/14_just_3/move
    tag @e[type=slime,tag=Targets] remove Targets

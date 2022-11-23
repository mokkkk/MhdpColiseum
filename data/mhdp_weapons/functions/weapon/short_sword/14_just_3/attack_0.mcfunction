#> mhdp_weapons:weapon/short_sword/14_just_3/attack_0
#
# 片手剣：ジャストラッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 1.2
    execute positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 -60 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_1
    execute positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 30 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_1
    execute if entity @s[tag=WpnSswordJust] positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 -60 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_0
    execute if entity @s[tag=WpnSswordJust] positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^2 rotated ~90 30 run function mhdp_weapons:weapon/short_sword/12_just_1/particle_0

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 150
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 180
    execute if entity @s[tag=WpnSswordJust] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 210
    execute if entity @s[tag=WpnSswordJust] run scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 350
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# ダメージ発生
    execute positioned ^ ^ ^3 as @e[type=slime,tag=MonsterParts,distance=..3.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run tag @s add AttackHit
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

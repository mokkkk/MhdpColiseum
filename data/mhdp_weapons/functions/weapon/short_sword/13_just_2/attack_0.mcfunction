#> mhdp_weapons:weapon/short_sword/13_just_2/attack_0
#
# 片手剣：ジャストラッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1
    
    execute positioned ~ ~1.65 ~ run particle cloud ^-1 ^ ^1.5 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle cloud ^1 ^ ^1.2 0.2 0.2 0.2 0.05 5

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 140
    execute if entity @s[tag=WpnSswordJust] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 280
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:2,Offhand:1b}

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..3] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

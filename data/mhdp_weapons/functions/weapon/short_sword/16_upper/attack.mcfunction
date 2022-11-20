#> mhdp_weapons:weapon/short_sword/16_upper/attack
#
# 片手剣：昇竜撃 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1
    
    execute positioned ~ ~2 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~2.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 300
    execute if entity @s[tag=WpnSswordCounter] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 450
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:2,Offhand:1b}

# ダメージ発生
    execute positioned ~ ~1 ~ as @e[type=slime,tag=MonsterParts,distance=..4.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

# 終了
    tag @s remove WpnSswordCounter

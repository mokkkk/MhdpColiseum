#> mhdp_weapons:weapon/great_sword/6_sweep/attack
#
# 大剣：薙ぎ払い 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ^1 ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10
    execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10
    execute positioned ^-1 ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 200
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# ダメージ発生
    execute positioned ^ ^ ^5.5 as @e[type=slime,tag=MonsterParts,distance=..6.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

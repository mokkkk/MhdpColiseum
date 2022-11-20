#> mhdp_weapons:weapon/great_sword/3_charge_attack/attack
#
# 大剣：溜め斬り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 200
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100
    execute if entity @s[tag=WpnGswordCharge1] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 250
    execute if entity @s[tag=WpnGswordCharge2] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 320
    execute if entity @s[tag=WpnGswordCharge3] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 550
    execute if entity @s[tag=WpnGswordCharge2,tag=PlyDrawAttackWirebug] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 280
    execute if entity @s[tag=WpnGswordCharge3,tag=PlyDrawAttackWirebug] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 360

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run tag @s add AttackHit
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

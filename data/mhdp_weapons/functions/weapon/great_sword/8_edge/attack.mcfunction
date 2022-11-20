#> mhdp_weapons:weapon/great_sword/8_edge/attack
#
# 大剣：ハンティングエッジ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

# 溜め段階に応じて倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 200
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100
    execute if entity @s[tag=WpnGswordCharge1] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 260
    execute if entity @s[tag=WpnGswordCharge2] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 380
    execute if entity @s[tag=WpnGswordCharge3] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 600

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run tag @s add AttackHit
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

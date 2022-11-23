#> mhdp_weapons:weapon/short_sword/9_jump/attack
#
# 片手剣：駆け上がり斬り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 1.2
    execute positioned ^ ^ ^2.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 50
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 50
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# ダメージ発生
    execute positioned ^ ^ ^1 as @e[type=slime,tag=MonsterParts,distance=..5,limit=1,sort=nearest] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

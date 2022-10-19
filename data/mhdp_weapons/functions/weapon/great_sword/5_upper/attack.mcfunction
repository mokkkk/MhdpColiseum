#> mhdp_weapons:weapon/great_sword/5_upper/attack
#
# 大剣：斬り上げ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 260
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..3,limit=1,sort=nearest] run tag @s add Victim
    execute if entity @e[type=slime,tag=Victim] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

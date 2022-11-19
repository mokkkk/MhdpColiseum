#> mhdp_weapons:weapon/short_sword/5_back_bash/attack
#
# 片手剣：盾攻撃２ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1
    execute positioned ~ ~1.65 ~ run particle cloud ^-1 ^ ^1.5 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle cloud ^1 ^ ^1.2 0.2 0.2 0.2 0.05 5

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 160
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0

# ダメージ発生
    execute positioned ^ ^ ^3.5 as @e[type=slime,tag=MonsterParts,distance=..3,limit=1,sort=nearest] run tag @s add Victim
    execute if entity @e[type=slime,tag=Victim] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

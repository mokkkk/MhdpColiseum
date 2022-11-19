#> mhdp_weapons:weapon/short_sword/10_fall/attack
#
# 片手剣：フォールバッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1
    execute positioned ~ ~0.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~2 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~2.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~5.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~6 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~6.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~7 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~7.5 ~ run particle cloud ^ ^ ^0.3 0.2 0.2 0.2 0.05 5

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 240
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0

# ダメージ発生
    execute positioned ~ ~2 ~ as @e[type=slime,tag=MonsterParts,distance=..3,limit=1,sort=nearest] run tag @s add Victim
    execute if entity @e[type=slime,tag=Victim] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

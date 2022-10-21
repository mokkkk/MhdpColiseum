#> mhdp_weapons:weapon/great_sword/4_tackle/attack
#
# 大剣：タックル 攻撃エフェクト
#

# 演出
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 80
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0

# ダメージ発生
    execute rotated ~ 0 positioned ^ ^ ^1.5 as @e[type=slime,tag=MonsterParts,distance=..2,limit=1,sort=nearest] run tag @s add Victim
    execute if entity @e[type=slime,tag=Victim] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

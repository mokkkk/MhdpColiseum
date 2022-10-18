#> mhdp_weapons:weapon/great_sword/5_upper/attack
#
# 大剣：斬り上げ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute rotated ~ 0 positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

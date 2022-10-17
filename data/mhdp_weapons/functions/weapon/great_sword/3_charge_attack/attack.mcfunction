#> mhdp_weapons:weapon/great_sword/3_charge_attack/attack
#
# 大剣：溜め斬り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute rotated ~ 0 positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.1 1 0.1 0 20

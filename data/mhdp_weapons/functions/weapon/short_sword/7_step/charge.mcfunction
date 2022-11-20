#> mhdp_weapons:weapon/short_sword/7_step/charge
#
# 片手剣：バックステップ 溜め

# 演出
    playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    particle flash ~ ~1 ~ 0 0 0 0 1
    particle crit ~ ~1.4 ~ 0.5 0.5 0.5 1 20

# タグ付与
    tag @s add WpnSswordCharged

#> mhdp_weapons:weapon/short_sword/16_upper/counter
#
# 片手剣：バックステップ 溜め

# 演出
    playsound entity.item.break master @s ~ ~ ~ 1 0.5
    playsound entity.item.break master @s ~ ~ ~ 1 0.7
    playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1.5
    particle flash ~ ~1 ~ 0 0 0 0 1
    particle crit ~ ~1.4 ~ 0.5 0.5 0.5 1 20

# タグ付与
    tag @s add WpnSswordCounter

#> mhdp_weapons:weapon/short_sword/14_just_3/anti_bug
#
# 片手剣 ジャストラッシュ バグ対策

# パーツ消去
    tp @e[tag=WpnSswordKnockback] ~ ~-1000 ~
    kill @e[tag=WpnSswordKnockback]

# IDをそろえる
    scoreboard players operation #mhdp_global_knockback_id MhdpCore = #mhdp_global_knockback_kill_id MhdpCore

# 終了
    tag @s remove TargetNotFound
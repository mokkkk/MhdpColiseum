#> mhdp_weapons:weapon/short_sword/7_step/end
#
# 片手剣：バックステップ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# 移動速度リセット
    effect clear @s slowness
    
# タグ更新
    tag @s remove WpnSsword7Step
    tag @s remove PlySneakAvoidLock
    tag @s remove WpnSswordCharged

# Marker消去
    kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]

#> mhdp_weapons:weapon/short_sword/6_spin/end
#
# 片手剣：回転斬り終了

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword6Spin

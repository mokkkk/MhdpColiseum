#> mhdp_weapons:weapon/short_sword/6_spin/change_step
#
# 片手剣：回転斬り → バックステップ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# タグ更新
    tag @s remove WpnSsword6Spin
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/7_step/start

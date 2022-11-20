#> mhdp_weapons:weapon/short_sword/16_upper/change_fall
#
# 片手剣：昇竜撃→フォールバッシュ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# タグ更新
    tag @s remove WpnSsword16Upper
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/10_fall/start

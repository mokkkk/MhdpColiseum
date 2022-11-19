#> mhdp_weapons:weapon/short_sword/9_jump/change_fall
#
# 片手剣：駆け上がり斬り→フォールバッシュ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# タグ更新
    tag @s remove WpnSsword9Jump
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/10_fall/start

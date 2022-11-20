#> mhdp_weapons:weapon/short_sword/5_back_bash/change_step
#
# 片手剣：盾攻撃２ → バックステップ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# タグ更新
    tag @s remove WpnSsword5SB2
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/7_step/start

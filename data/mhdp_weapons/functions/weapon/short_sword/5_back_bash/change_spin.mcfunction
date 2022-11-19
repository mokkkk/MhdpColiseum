#> mhdp_weapons:weapon/short_sword/5_back_bash/change_spin
#
# 片手剣：盾攻撃１ → 回転斬り

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword5SB2
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/6_spin/start

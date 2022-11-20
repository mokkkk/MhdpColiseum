#> mhdp_weapons:weapon/short_sword/8_charge_attack/change_spin
#
# 片手剣：突進斬り → 回転斬り

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword8CA
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/6_spin/start

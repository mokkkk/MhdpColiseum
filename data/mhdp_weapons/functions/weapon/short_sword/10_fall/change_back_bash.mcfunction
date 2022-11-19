#> mhdp_weapons:weapon/short_sword/4_bash/change_back_bash
#
# 片手剣：盾攻撃１ → 盾攻撃２

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword4SB1
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/5_back_bash/start

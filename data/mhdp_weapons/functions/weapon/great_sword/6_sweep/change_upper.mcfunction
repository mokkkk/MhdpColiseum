#> mhdp_weapons:weapon/great_sword/6_sweep/change_upper
#
# 大剣： 薙ぎ払い → 斬り上げ

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordSweep
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/great_sword/5_upper/start

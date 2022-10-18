#> mhdp_weapons:weapon/great_sword/5_upper/change_sweep
#
# 大剣：斬り上げ → 薙ぎ払い

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordUpper
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/great_sword/6_sweep/start

#> mhdp_weapons:weapon/great_sword/5_upper/end
#
# 大剣：斬り上げ → 溜め

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordUpper

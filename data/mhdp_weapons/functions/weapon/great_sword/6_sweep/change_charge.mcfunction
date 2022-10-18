#> mhdp_weapons:weapon/great_sword/6_sweep/change_charge
#
# 大剣：薙ぎ払い → 溜め

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordSweep

# 移行
    function mhdp_weapons:weapon/great_sword/2_charge/start

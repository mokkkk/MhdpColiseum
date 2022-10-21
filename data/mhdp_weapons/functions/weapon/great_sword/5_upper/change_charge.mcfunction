#> mhdp_weapons:weapon/great_sword/5_upper/change_charge
#
# 大剣：斬り上げ終了

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordUpper

# 移行
    function mhdp_weapons:weapon/great_sword/2_charge/start

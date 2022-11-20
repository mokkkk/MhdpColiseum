#> mhdp_weapons:weapon/short_sword/15_wire/change_bash
#
# 片手剣：飛影 → 盾攻撃１

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSswordWire
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/4_bash/start

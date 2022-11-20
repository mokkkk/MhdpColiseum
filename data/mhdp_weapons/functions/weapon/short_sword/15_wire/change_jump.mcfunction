#> mhdp_weapons:weapon/short_sword/15_wire/change_jump
#
# 片手剣：飛影 → 駆け上がり斬り

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword15Wire
    tag @s remove RClicked

# 移行
    function mhdp_weapons:weapon/short_sword/9_jump/start

#> mhdp_weapons:weapon/great_sword/8_edge/end
#
# 大剣：ハンティングエッジ

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock
    
# タグ更新
    tag @s remove WpnGswordChargeAttack
    tag @s remove PlyDrawAttack
    tag @s remove PlyDrawAttackWirebug

# タグ更新
    tag @s remove WpnGsword8Edge

#> mhdp_weapons:weapon/great_sword/7_guard/end
#
# 大剣：ガード終了

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordGuardEnd

# エフェクト更新
    effect clear @s slowness
    effect clear @s jump_boost

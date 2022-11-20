#> mhdp_weapons:weapon/short_sword/3_guard/end
#
# 片手剣：ガード終了

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword3GuardEnd

# エフェクト更新
    effect clear @s slowness
    effect clear @s jump_boost

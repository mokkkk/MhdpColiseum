#> mhdp_weapons:weapon/great_sword/6_sweep/end
#
# 大剣：薙ぎ払い終了

# モデル変更
    function mhdp_weapons:weapon/great_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnGswordSweep

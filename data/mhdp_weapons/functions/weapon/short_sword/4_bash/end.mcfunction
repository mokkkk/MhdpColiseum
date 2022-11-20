#> mhdp_weapons:weapon/short_sword/4_bash/end
#
# 片手剣：盾攻撃１終了

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword4SB1

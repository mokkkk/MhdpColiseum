#> mhdp_weapons:weapon/short_sword/14_just_3/end
#
# 片手剣：ジャストラッシュ終了

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword14Just3
    tag @s remove WpnSswordJust
    tag @s remove AttackHit

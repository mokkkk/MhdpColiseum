#> mhdp_weapons:weapon/short_sword/12_just_1/end
#
# 片手剣：ジャストラッシュ終了

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword12Just1
    tag @s remove WpnSswordJust

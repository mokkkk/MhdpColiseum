#> mhdp_weapons:weapon/short_sword/13_just_2/change_next
#
# 片手剣：ジャストラッシュ次へ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword13Just2
    tag @s remove WpnSswordJust

# ジャストタイミングタグ付与
    execute if entity @s[scores={MhdpWeaponTimer=19..23}] run tag @s add WpnSswordJust

# 移行
    function mhdp_weapons:weapon/short_sword/14_just_3/start

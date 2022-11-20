#> mhdp_weapons:weapon/short_sword/11_just_0/change_next
#
# 片手剣：ジャストラッシュ次へ

# モデル変更
    function mhdp_weapons:weapon/short_sword/99_reset/model

# ステップ回避ロック解除
    tag @s remove PlySneakAvoidLock

# タグ更新
    tag @s remove WpnSsword11Just0
    tag @s remove RClicked

# ジャストタイミングタグ付与
    execute if entity @s[scores={MhdpWeaponTimer=34..38}] run tag @s add WpnSswordJust

# 移行
    function mhdp_weapons:weapon/short_sword/12_just_1/start

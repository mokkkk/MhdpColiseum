#> mhdp_weapons:weapon/short_sword/3_guard/change_end
#
# 片手剣：ガード → ガード終了

# タイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
    tag @s remove WpnSsword3Guard

# タグ付与
    tag @s add WpnSsword3GuardEnd

say ガード終了
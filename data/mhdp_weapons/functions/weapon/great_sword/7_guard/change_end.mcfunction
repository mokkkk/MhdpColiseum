#> mhdp_weapons:weapon/great_sword/7_guard/change_end
#
# 大剣：ガード → ガード終了

# タイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
    tag @s remove WpnGswordGuard

# タグ付与
    tag @s add WpnGswordGuardEnd

say ガード終了
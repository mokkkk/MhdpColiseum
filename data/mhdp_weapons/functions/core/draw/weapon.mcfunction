#> mhdp_weapons:core/draw/weapon
#
# 各武器の抜刀処理呼び出し

# 1：弓
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status{WeaponType:1} run function mhdp_weapons:weapon/bow/97_draw/

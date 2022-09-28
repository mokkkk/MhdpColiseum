#> mhdp_weapons:core/sheathe/weapon
#
# 各武器の納刀処理呼び出し

# 1：弓
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status{WeaponType:1} run function mhdp_weapons:weapon/bow/98_sheathe/

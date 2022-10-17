#> mhdp_weapons:core/sheathe/weapon
#
# 各武器の納刀処理呼び出し

# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/98_sheathe/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/98_sheathe/

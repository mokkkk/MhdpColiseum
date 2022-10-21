#> mhdp_weapons:core/draw/weapon
#
# 各武器の抜刀処理呼び出し

# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/97_draw/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/97_draw/

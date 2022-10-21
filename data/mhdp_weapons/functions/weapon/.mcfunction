#> mhdp_weapons:weapon/
#
# 各武器への分岐

# ID
    # 1:弓
        execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/

    # 2:大剣
        execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/

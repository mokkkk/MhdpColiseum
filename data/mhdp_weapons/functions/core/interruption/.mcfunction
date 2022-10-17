#> mhdp_weapons:core/interruption/
#
# 各武器の中断処理呼び出し

# 共通
    # アーマー解除
        tag @s remove PlyArmorSuper
        tag @s remove PlyArmorHyper

# 1：弓
    execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/96_interruption/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/96_interruption/

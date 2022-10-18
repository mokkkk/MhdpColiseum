#> mhdp_weapons:weapon/great_sword/2_charge/change_tackle
#
# 大剣：溜め → タックル

# タグ消去
    tag @s remove WpnGswordCharge
    tag @s remove PlyDrawAttack

# 行動開始
    function mhdp_weapons:weapon/great_sword/4_tackle/start

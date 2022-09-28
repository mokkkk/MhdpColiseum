#> mhdp_weapons:weapon/bow/0_charge/change_charge_step
#
# 弓：溜め → チャージステップ

# タグ消去
    tag @s remove WpnBowCharge

# 行動開始
    function mhdp_weapons:weapon/bow/3_charge_step/start

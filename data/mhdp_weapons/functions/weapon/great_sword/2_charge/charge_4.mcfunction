#> mhdp_weapons:weapon/great_sword/2_charge/charge_4
#
# 大剣：溜め段階上昇（溜めすぎ）

# 演出
    tag @s remove WpnGswordCharge3
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7
    particle crit ^ ^1.65 ^0.5 0 0 0 1 5

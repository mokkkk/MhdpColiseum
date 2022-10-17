#> mhdp_weapons:weapon/great_sword/2_charge/charge_3
#
# 大剣：溜め段階上昇

# 演出
    tag @s add WpnGswordCharge3
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.1
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
    particle crit ^ ^1.65 ^0.5 0 0 0 1 5
    particle flash ^ ^1.65 ^0.5 0.3 0.3 0.3 3 5

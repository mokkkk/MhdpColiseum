#> mhdp_weapons:weapon/bow/2_charge/main_charge
#
# 弓：溜め WeaponCharge増加

# 溜めスコア増加
    execute if entity @s[tag=!SklFocusLv1,tag=!SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 10
    # スキル：集中Lv1
        execute if entity @s[tag=SklFocusLv1,tag=!SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 12
    # スキル：集中Lv2
        execute if entity @s[tag=SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 15

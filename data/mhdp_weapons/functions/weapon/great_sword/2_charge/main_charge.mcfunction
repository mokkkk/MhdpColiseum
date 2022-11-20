#> mhdp_weapons:weapon/great_sword/2_charge/main_charge
#
# 大剣：溜め WeaponCharge増加

# 溜めスコア増加
    execute if entity @s[tag=!SklFocusLv1,tag=!SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 10
    # スキル：集中Lv1
        execute if entity @s[tag=SklFocusLv1,tag=!SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 12
    # スキル：集中Lv2
        execute if entity @s[tag=SklFocusLv2] run scoreboard players add @s MhdpWeaponCharge 15

# ハンティングエッジ後の場合，さらに増加
    execute if entity @s[tag=PlyDrawAttackWirebug] run scoreboard players add @s MhdpWeaponCharge 20
    execute if entity @s[tag=PlyDrawAttackWirebug,scores={MhdpWeaponCharge=801..}] run scoreboard players set @s MhdpWeaponCharge 800

#> mhdp_weapons:weapon/great_sword/95_attack/
#
# 大剣 直接攻撃処理

# 倍率計算
     scoreboard players set #mhdp_temp_damage_mult MhdpCore 100
     scoreboard players set #mhdp_temp_element_damage_mult MhdpCore 75

# 属性設定
     data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

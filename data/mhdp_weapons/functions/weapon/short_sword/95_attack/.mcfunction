#> mhdp_weapons:weapon/short_sword/95_attack/
#
# 片手剣 直接攻撃処理

# 倍率計算
     scoreboard players set #mhdp_temp_damage_mult MhdpCore 50
     scoreboard players set #mhdp_temp_element_damage_mult MhdpCore 100

# 属性設定
     data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# タイマー設定
     scoreboard players set @s MhdpWeaponTimerSsword 12

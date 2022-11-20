#> mhdp_weapons:weapon/short_sword/95_attack/
#
# 片手剣 直接攻撃処理

# 倍率計算
     scoreboard players set #mhdp_temp_damage_mult MhdpCore 50
     scoreboard players operation #mhdp_temp_damage MhdpCore *= #mhdp_temp_damage_mult MhdpCore
     scoreboard players operation #mhdp_temp_damage MhdpCore /= #asam_const_100 AsaMatrix
     scoreboard players set #mhdp_temp_damage_mult MhdpCore 100
     scoreboard players operation #mhdp_temp_element_damage MhdpCore *= #mhdp_temp_damage_mult MhdpCore
     scoreboard players operation #mhdp_temp_element_damage MhdpCore /= #asam_const_100 AsaMatrix

# 属性設定
     data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# タイマー設定
     scoreboard players set @s MhdpWeaponTimerSsword 8

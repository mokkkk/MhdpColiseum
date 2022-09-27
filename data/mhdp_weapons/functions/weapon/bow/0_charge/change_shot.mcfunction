#> mhdp_weapons:weapon/bow/0_charge/change_shot
#
# 弓：溜め → 射撃

# タグ消去
    tag @s remove WpnBowCharge

# 集中力が負の値の場合，0に戻す
    execute if entity @s[scores={MhdpWeaponExt=..-1}] run scoreboard players set @s MhdpWeaponExt 0

# 行動開始
    function mhdp_weapons:weapon/bow/1_shot/start

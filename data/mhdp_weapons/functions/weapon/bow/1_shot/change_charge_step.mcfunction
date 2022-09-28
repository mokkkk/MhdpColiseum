#> mhdp_weapons:weapon/bow/1_shot/change_charge_step
#
# 弓：射撃 → 溜め

# タグ消去
    tag @s remove WpnBowShot

# 集中力が負の値の場合，0に戻す
    execute if entity @s[scores={MhdpWeaponExt=..-1}] run scoreboard players set @s MhdpWeaponExt 0

# 行動開始
    function mhdp_weapons:weapon/bow/3_charge_step/start

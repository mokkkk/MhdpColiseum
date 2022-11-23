#> mhdp_weapons:weapon/bow/3_shot/change_hard_shot
#
# 弓：射撃 → 剛射

# タグ消去
    tag @s remove WpnBowShot

# 溜め段階を１段階上げる
    execute if entity @s[tag=!WpnBowCharge1,tag=!WpnBowCharge2,tag=!WpnBowCharge3,tag=!WpnBowCharge4] run scoreboard players set @s MhdpWeaponCharge 200
    execute if entity @s[tag=WpnBowCharge1] run scoreboard players set @s MhdpWeaponCharge 400
    execute if entity @s[tag=WpnBowCharge2] run scoreboard players set @s MhdpWeaponCharge 600
    execute if entity @s[tag=WpnBowCharge3] run scoreboard players set @s MhdpWeaponCharge 800

# 溜め段階タグ更新
    tag @s remove WpnBowCharge1
    tag @s remove WpnBowCharge2
    tag @s remove WpnBowCharge3
    tag @s remove WpnBowCharge4
    execute if entity @s[scores={MhdpWeaponCharge=200}] run tag @s add WpnBowCharge1
    execute if entity @s[scores={MhdpWeaponCharge=400}] run tag @s add WpnBowCharge2
    execute if entity @s[scores={MhdpWeaponCharge=600}] run tag @s add WpnBowCharge3
    execute if entity @s[scores={MhdpWeaponCharge=800}] run tag @s add WpnBowCharge4

# 行動開始
    function mhdp_weapons:weapon/bow/4_hard_shot/start

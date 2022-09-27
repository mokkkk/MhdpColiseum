#> mhdp_weapons:core/reset/count
#
# 武器増殖対策

# オフハンドに武器が２本以上来た場合
    execute store result score #mhdp_temp_count MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.Count
    execute if score #mhdp_temp_count MhdpCore matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add IsOffHand2
    execute if entity @s[tag=IsOffHand2] run function mhdp_weapons:core/reset/count_off

# それ以外の場合
    execute unless entity @s[tag=IsOffHand2] run function mhdp_weapons:core/reset/count_default

# 終了
    tag @s remove IsOffHand2

say check
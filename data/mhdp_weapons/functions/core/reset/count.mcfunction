#> mhdp_weapons:core/reset/count
#
# 武器増殖対策

# オフハンドに武器が２本来た場合
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand{Count:2b} run tag @s add IsOffHand2
    execute if entity @s[tag=IsOffHand2] run function mhdp_weapons:core/reset/count_off

# それ以外の場合
    execute unless entity @s[tag=IsOffHand2] run function mhdp_weapons:core/reset/count_default

# 終了
    tag @s remove IsOffHand2

#> mhdp_core:phase/0_village/player/armor/check
#
# プレイヤー装備中の防具データ更新有無を取得

# PlayerData.Item.Armor に装備を保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Head set value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Head set from entity @s Inventory[{Slot:103b}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Chest set value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Chest set from entity @s Inventory[{Slot:102b}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs set value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs set from entity @s Inventory[{Slot:101b}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Feet set value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Feet set from entity @s Inventory[{Slot:100b}]

# 防具データを退避
    execute store success score #mhdp_success_temp MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreArmor.Head set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Head
    execute if score #mhdp_success_temp MhdpCore matches 1.. run tag @s add Changed
    execute store success score #mhdp_success_temp MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreArmor.Chest set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Chest
    execute if score #mhdp_success_temp MhdpCore matches 1.. run tag @s add Changed
    execute store success score #mhdp_success_temp MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreArmor.Legs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs
    execute if score #mhdp_success_temp MhdpCore matches 1.. run tag @s add Changed
    execute store success score #mhdp_success_temp MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreArmor.Feet set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Feet
    execute if score #mhdp_success_temp MhdpCore matches 1.. run tag @s add Changed

# 終了
    scoreboard players reset #mhdp_success_temp

#> mhdp_core:player/data/get
#
# PlayerDataを取得する処理

# PlayerData.Item.MainHandにオフハンドのアイテムを保存
# PlayerData.Item.OffHandにオフハンドのアイテムを保存
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set from entity @s SelectedItem
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand set from entity @s Inventory[{Slot:-106b}]

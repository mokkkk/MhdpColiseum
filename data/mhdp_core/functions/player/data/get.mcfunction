#> mhdp_core:player/data/get
#
# PlayerDataを取得する処理

# PlayerData.Item.MainHandにオフハンドのアイテムを保存
# PlayerData.Item.OffHandにオフハンドのアイテムを保存
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set from entity @s SelectedItem
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand set from entity @s Inventory[{Slot:-106b}]

# SelectedItemSlot
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot set from entity @s SelectedItemSlot

# メイン武器を退避
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand

# 前tick Pos退避
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Current
# Pos取得
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Current set from entity @s Pos

# 前tick Rotation退避
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Rotation.Pre set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Rotation.Current
# Pos取得
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Rotation.Current set from entity @s Rotation

# 満腹度取得
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.FoodLevel set from entity @s foodLevel

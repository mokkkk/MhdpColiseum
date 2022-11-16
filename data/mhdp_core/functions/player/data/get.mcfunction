#> mhdp_core:player/data/get
#
# PlayerDataを取得する処理

# 前tick SelectedItemSlot退避
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreSlot set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot
# SelectedItemSlot
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot set from entity @s SelectedItemSlot

# SelectedItem比較
    execute store result score #mhdp_temp_slot_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreSlot
    execute store result score #mhdp_temp_slot_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot
    execute unless score #mhdp_temp_slot_0 MhdpCore = #mhdp_temp_slot_1 MhdpCore run tag @s add PlySelectedItemChanged

# アイテムデータ取得
    function mhdp_core:player/data/get_

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

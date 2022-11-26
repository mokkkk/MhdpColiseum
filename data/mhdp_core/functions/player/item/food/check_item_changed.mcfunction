#> mhdp_core:player/item/food/check_item_changed
#
# アイテム用メイン処理 薬 入れ替え検知

# 初期値
    scoreboard players set #mhdp_temp_success MhdpCore 2

# アイテムIDによる比較
    execute store result score #mhdp_temp_id_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreMainHand.tag.MhdpItemId
    execute store result score #mhdp_temp_id_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag.MhdpItemId
    execute if score #mhdp_temp_id_0 MhdpCore = #mhdp_temp_id_1 MhdpCore run scoreboard players remove #mhdp_temp_success MhdpCore 1
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreMainHand set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand

# SelectedItemSlotによる比較
    execute store result score #mhdp_temp_slot_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreSlot
    execute store result score #mhdp_temp_slot_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot
    execute if score #mhdp_temp_slot_0 MhdpCore = #mhdp_temp_slot_1 MhdpCore run scoreboard players remove #mhdp_temp_success MhdpCore 1

# 入れ替えを検知した場合，使用を中断
    execute if entity @s[scores={MhdpTUsingItem=3..}] if score #mhdp_temp_success MhdpCore matches 1.. run tag @s add PlyUsingPotionEnd
    execute if entity @s[scores={MhdpTUsingItem=3..}] if score #mhdp_temp_success MhdpCore matches 1.. run say 使用中断

# 終了
    scoreboard players reset #mhdp_temp_success MhdpCore
    scoreboard players reset #mhdp_temp_id_0 MhdpCore
    scoreboard players reset #mhdp_temp_id_1 MhdpCore
    scoreboard players reset #mhdp_temp_slot_0 MhdpCore
    scoreboard players reset #mhdp_temp_slot_1 MhdpCore
#> mhdp_core:player/item/core/main_give
#
# アイテム処理用 メインハンドアイテムの移動

# shulker_boxにメインハンドをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage mhdp_core:temp Temp2.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage mhdp_core:temp Temp2.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp2.tag

# メインハンドアイテムをgive
    loot give @s mine 0 0 0 debug_stick

# 終了
    data remove storage mhdp_core:temp Temp2
    data remove block 0 0 0 Items[{Slot:0b}]

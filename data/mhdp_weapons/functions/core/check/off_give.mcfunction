#> mhdp_weapons:core/check/off_give
#
# 強制納刀用オフハンドアイテムの移動

# shulker_boxにオフハンドをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage mhdp_core:temp Temp2.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage mhdp_core:temp Temp2.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp2.tag

# オフハンドアイテムをgive
    loot give @s mine 0 0 0 debug_stick

    clone 0 0 0 0 0 0 -50 66 84 replace

# 終了
    data remove storage mhdp_core:temp Temp2
    data remove block 0 0 0 Items[{Slot:0b}]

#> mhdp_core:phase/2_quest_wait/prepare/pick_item
#
# Phase2_クエスト出発待機 落とし物回収

# アイテムをストレージに保存
    data modify storage mhdp_core:temp Temp.Items set value []
    execute as @e[type=item] run data modify storage mhdp_core:temp Temp.Items append from entity @s Item

# アイテムを一時チェストに保存
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    execute if data storage mhdp_core:temp Temp.Items[0] run function mhdp_core:phase/2_quest_wait/prepare/pick_item_

# 終了
    kill @e[type=item]
    data remove storage mhdp_core:temp Temp
    data remove block 0 0 0 Items[{Slot:0b}]

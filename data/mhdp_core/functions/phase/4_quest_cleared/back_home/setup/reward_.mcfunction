#> mhdp_core:phase/4_quest_cleared/back_home/setup/reward_
#
# Phase4_クエストクリア 帰還処理 報酬チェスト用意 中身退避

# アイテムをストレージに保存
    data modify storage mhdp_core:temp Temp.Items set from block 255 63 198 Items

# アイテムを一時チェストに保存
    execute if data storage mhdp_core:temp Temp.Items[0] run function mhdp_core:phase/2_quest_wait/prepare/pick_item_

# 終了
    data remove storage mhdp_core:temp Temp
    data remove block 0 0 0 Items[{Slot:0b}]

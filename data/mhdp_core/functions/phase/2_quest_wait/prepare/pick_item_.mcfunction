#> mhdp_core:phase/2_quest_wait/prepare/pick_item_
#
# Phase2_クエスト出発待機 落とし物回収

# shulker_boxにアイテムデータをコピー
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage mhdp_core:temp Temp.Items[-1].id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage mhdp_core:temp Temp.Items[-1].Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp.Items[-1].tag

# 一時保存チェストに入れる
    loot insert 260 64 212 mine 0 0 0 debug_stick

# 終了
    data remove storage mhdp_core:temp Temp.Items[-1]

# アイテムが残っている場合，繰り返す
    execute if data storage mhdp_core:temp Temp.Items[0] run function mhdp_core:phase/2_quest_wait/prepare/pick_item_

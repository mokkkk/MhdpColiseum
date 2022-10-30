#> mhdp_core:phase/2_quest_wait/start_quest/setup/rewards/
#
# Phase1_クエスト受注 クエスト開始処理 報酬準備

# 取り出し
    data modify storage mhdp_core:temp Temp.Item set from storage mhdp_core:temp Temp.RewardItems[-1]
    data remove storage mhdp_core:temp Temp.RewardItems[-1]

# 個数取得
    execute store result score #mhdp_temp_count MhdpCore run data get storage mhdp_core:temp Temp.Item.Count
    execute store result score #mhdp_temp_min MhdpCore run data get storage mhdp_core:temp Temp.Item.Min

# 分岐
    execute if data storage mhdp_core:temp Temp.Item{Name:"Reus"} run function mhdp_core:phase/2_quest_wait/start_quest/setup/rewards/reus/normal
    execute if data storage mhdp_core:temp Temp.Item{Name:"Diablos"} run function mhdp_core:phase/2_quest_wait/start_quest/setup/rewards/diablos/normal

# データが残っていれば繰り返す
    execute if data storage mhdp_core:temp Temp.RewardItems[0] run function mhdp_core:phase/2_quest_wait/start_quest/setup/rewards/

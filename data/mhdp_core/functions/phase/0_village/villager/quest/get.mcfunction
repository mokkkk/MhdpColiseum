#> mhdp_core:phase/0_village/villager/quest/get
#
# 村人の配置処理 クエスト発注者 クエストリストから取引内容を決定

# 取り出し
    data modify storage mhdp_core:temp Temp.Quest set from storage mhdp_core:temp Temp.QuestList[0]
    data remove storage mhdp_core:temp Temp.QuestList[0]

# Visibleが0bの場合は追加しない
    execute if data storage mhdp_core:temp Temp.Quest{Visible:1b} run function mhdp_core:phase/0_village/villager/quest/get_

# データが残っているなら繰り返す
    execute if data storage mhdp_core:temp Temp.QuestList[0] run function mhdp_core:phase/0_village/villager/quest/get

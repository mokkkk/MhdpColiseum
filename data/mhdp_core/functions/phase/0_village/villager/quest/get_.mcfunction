#> mhdp_core:phase/0_village/villager/quest/get_
#
# 村人の配置処理 クエスト発注者 クエストリストから取引内容を決定

# 書き換え元追加
    data modify storage mhdp_core:temp Temp.Trade append value {maxUses:9999,uses:0,xp:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"-"}',Lore:['{"text":"-"}']},CustomModelData:10000,MhdpQuest:1,QuestId:0}}}

# ID書き換え
    data modify storage mhdp_core:temp Temp.Trade[-1].sell.tag.QuestId set from storage mhdp_core:temp Temp.Quest.Index

# クエスト状態に応じて文言変更
    execute if data storage mhdp_core:temp Temp.Quest{Started:0b} run data modify storage mhdp_core:temp Temp.Quest.display.Name set from storage mhdp_core:temp Temp.Quest.NameNew
    execute if data storage mhdp_core:temp Temp.Quest{Cleared:1b} run data modify storage mhdp_core:temp Temp.Quest.display.Name set from storage mhdp_core:temp Temp.Quest.NameClear

# display書き換え
    data modify storage mhdp_core:temp Temp.Trade[-1].sell.tag.display set from storage mhdp_core:temp Temp.Quest.display
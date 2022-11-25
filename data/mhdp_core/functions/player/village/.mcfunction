#> mhdp_core:player/village/
#
# 各プレイヤーが毎tick実行する処理 村中処理

# クエスト受注処理
    execute if entity @s[tag=!PlyQuest,tag=AdvTradeQuestNormal] run function mhdp_core:phase/0_village/receive_quest/normal

# 防具取得処理
    execute if entity @s[tag=!PlyQuest,tag=AdvInventoryChangedArmor] run function mhdp_core:phase/0_village/player/armor/

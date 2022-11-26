#> mhdp_core:phase/1_quest_received/departure/check_5_item_count
#
# Phase1_クエスト受注 クエスト出発条件確認 アイテム個数制限超え

# 怪力の種
    execute store result score #mhdp_temp_count MhdpCore run clear @s cooked_beef{MhdpItem:1b,MhdpItemId:51} 0
    # 個数確認
        execute if score #mhdp_temp_count MhdpCore matches 11.. run tag @s add Check5

# 硬化の種
    execute store result score #mhdp_temp_count MhdpCore run clear @s cooked_beef{MhdpItem:1b,MhdpItemId:52} 0
    # 個数確認
        execute if score #mhdp_temp_count MhdpCore matches 11.. run tag @s add Check5


# 終了
    scoreboard players reset #mhdp_temp_count MhdpCore

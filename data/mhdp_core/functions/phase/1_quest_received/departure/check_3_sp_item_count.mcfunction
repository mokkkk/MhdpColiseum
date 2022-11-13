#> mhdp_core:phase/1_quest_received/departure/check_3_sp_item_count
#
# Phase1_クエスト受注 クエスト出発条件確認 特殊装具を3種類以上持っている

# 計算用
    scoreboard players set #mhdp_temp_count_sum MhdpCore 0

# 不動の装衣
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1001} 0
    scoreboard players operation #mhdp_temp_count_sum MhdpCore += #mhdp_temp_count MhdpCore
# 翔蟲
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1002} 0
    scoreboard players operation #mhdp_temp_count_sum MhdpCore += #mhdp_temp_count MhdpCore
# てすと
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1003} 0
    scoreboard players operation #mhdp_temp_count_sum MhdpCore += #mhdp_temp_count MhdpCore

# 個数確認
    execute if score #mhdp_temp_count_sum MhdpCore matches 3.. run tag @s add Check3

# 終了
    scoreboard players reset #mhdp_temp_count MhdpCore
    scoreboard players reset #mhdp_temp_count_sum MhdpCore

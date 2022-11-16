#> mhdp_core:phase/1_quest_received/departure/check_2_sp_item_kind
#
# Phase1_クエスト受注 クエスト出発条件確認 同じ種類の特殊装具を2つ以上持っている

# 不動の装衣
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1001} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run tag @s add Check2
# 翔蟲
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1002} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run tag @s add Check2
# てすと
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1003} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run tag @s add Check2


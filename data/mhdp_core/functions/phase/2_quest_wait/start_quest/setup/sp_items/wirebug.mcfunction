#> mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/wirebug
#
# Phase1_クエスト受注 クエスト開始処理 特殊装具タグ設定

# 所持確認
    execute store result score #mhdp_temp_count MhdpCore run clear @s carrot_on_a_stick{MhdpItemId:1002} 0

# データ設定
    execute if score #mhdp_temp_count MhdpCore matches 1.. run tag @s add PlyItmWirebug
    execute if score #mhdp_temp_count MhdpCore matches 1.. if entity @s[scores={MhdpSpItemId0=1..}] run scoreboard players set @s MhdpSpItemId1 2
    execute if score #mhdp_temp_count MhdpCore matches 1.. if entity @s[scores={MhdpSpItemId0=..0}] run scoreboard players set @s MhdpSpItemId0 2

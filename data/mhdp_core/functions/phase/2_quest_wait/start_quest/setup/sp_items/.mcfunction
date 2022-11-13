#> mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー特殊装具タグ取得

# データ取得準備
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.SpItems set value []
    scoreboard players set @s MhdpSpItemId0 0
    scoreboard players set @s MhdpSpItemId1 0

# 不動の装衣
    function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/immovable

# 翔蟲
    function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/wirebug

# 取得
    execute store result score @s MhdpSpItemId0 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.SpItems[0] 1
    execute store result score @s MhdpSpItemId1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.SpItems[1] 1

# 終了
    scoreboard players reset #mhdp_temp_count MhdpCore

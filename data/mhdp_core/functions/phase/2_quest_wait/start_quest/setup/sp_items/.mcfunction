#> mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー特殊装具タグ取得

# データ取得準備
    function oh_my_dat:please
    scoreboard players set @s MhdpSpItemId0 -1
    scoreboard players set @s MhdpSpItemId1 -1

# １：不動の装衣
    function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/immovable
# ２：翔蟲
    function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/wirebug

# 終了
    scoreboard players reset #mhdp_temp_count MhdpCore

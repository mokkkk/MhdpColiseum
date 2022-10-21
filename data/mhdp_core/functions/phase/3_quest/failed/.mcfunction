#> mhdp_core:phase/3_quest/failed/
#
# Phase3_クエスト クエスト失敗時

# タイマー初期化
    scoreboard players set #mhdp_quest_timer MhdpCore 0

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 5

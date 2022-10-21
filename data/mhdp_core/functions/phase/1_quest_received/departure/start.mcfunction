#> mhdp_core:phase/1_quest_received/departure/start
#
# Phase1_クエスト受注 クエスト出発待機処理 出発開始

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 2

# タイマー初期化
    scoreboard players set #mhdp_quest_timer MhdpCore 0

# メッセージ
    tellraw @a {"text": "【クエストに出発します！】"}

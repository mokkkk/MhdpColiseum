#> mhdp_core:phase/
#
# Phase毎の分岐処理

# 0_クエスト未受注
    # 常時実行処理無しの予定

# 1_クエスト受注後
    # 常時実行処理無し
    # execute if data storage mh_dp:status GameStatus{Phase:1} run function mhdp_core:phase/1_quest_received/

# 2_クエスト出発待機・出発
    execute if data storage mh_dp:status GameStatus{Phase:2} run function mhdp_core:phase/2_quest_wait/

# 3_クエスト
    execute if data storage mh_dp:status GameStatus{Phase:3} run function mhdp_core:phase/3_quest/

# 4_クエストクリア
    execute if data storage mh_dp:status GameStatus{Phase:4} run function mhdp_core:phase/4_quest_cleared/

# 5_クエスト失敗
    execute if data storage mh_dp:status GameStatus{Phase:5} run function mhdp_core:phase/5_quest_failed/

# 6_ムービー

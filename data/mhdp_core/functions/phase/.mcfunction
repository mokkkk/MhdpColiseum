#> mhdp_core:phase/
#
# Phase毎の分岐処理

# 0_クエスト未受注


# 1_クエスト受注
    execute if data storage mh_dp:status GameStatus{Phase:1} run function mhdp_core:phase/1_quest_received/

# 2_クエスト出発待機
    execute if data storage mh_dp:status GameStatus{Phase:2} run function mhdp_core:phase/2_quest_wait/

# 3_クエスト


# 4_クエストクリア


# 5_クエスト失敗


# 6_ムービー

#> mhdp_core:phase/2_quest_wait/start_quest/
#
# Phase1_クエスト受注 クエスト開始処理

# 報酬リセット
    clone 152 87 156 153 87 156 152 89 156 replace

# クエスト独自処理実行
    function mhdp_core:phase/2_quest_wait/start_quest/quests/

# Phase変更
    execute unless data storage mh_dp:status GameStatus{Movie:1b} run function mhdp_core:phase/2_quest_wait/start_quest/phase_quest
    # execute if data storage mh_dp:status GameStatus{Movie:1b} run data modify storage mh_dp:status GameStatus.Phase set value 6

say 出発
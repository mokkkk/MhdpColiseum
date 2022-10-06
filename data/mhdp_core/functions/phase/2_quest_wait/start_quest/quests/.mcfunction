#> mhdp_core:phase/2_quest_wait/start_quest/quests/
#
# Phase1_クエスト受注 クエスト独自処理割り当て

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_monster_count

# 000 - テスト用クエスト
    execute if score #mhdp_quest_id MhdpCore matches 0 run function mhdp_core:phase/2_quest_wait/start_quest/quests/0

#> mhdp_core:phase/2_quest_wait/start_quest/setup/quest_start
#
# Phase2_クエスト出発待機 出発処理 クエスト状態変更

# 配列コピー
    data modify storage array_util: Array set from storage mh_dp:quests List
# 目標の添字を設定
    scoreboard players operation $Move ArrayUtilInput = #mhdp_quest_id MhdpCore
# 移動
    function array_util:api/move
# 開始済みフラグを更新
    data modify storage array_util: Array[-1].Started set value 1b
# 戻す
    function array_util:api/revert
    data modify storage mh_dp:quests List set from storage array_util: Array

say クエスト開始状態変更 in mhdp_core:phase/2_quest_wait/start_quest/setup/quest_start
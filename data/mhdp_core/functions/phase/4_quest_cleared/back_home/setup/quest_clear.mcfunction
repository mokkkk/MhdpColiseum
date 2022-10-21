#> mhdp_core:phase/4_quest_cleared/back_home/setup/quest_clear
#
# Phase4_クエストクリア 帰還処理 クエスト状態変更

# 配列コピー
    data modify storage array_util: Array set from storage mh_dp:quests List
# 目標の添字を設定
    scoreboard players operation $Move ArrayUtilInput = #mhdp_quest_id MhdpCore
# 移動
    function array_util:api/move
# クリア済みフラグを更新
    data modify storage array_util: Array[-1].Cleared set value 1b
# 戻す
    function array_util:api/revert
    data modify storage mh_dp:quests List set from storage array_util: Array

say クエストクリア状態変更 in mhdp_core:phase/4_quest_cleared/back_home/setup/quest_clear
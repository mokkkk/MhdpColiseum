#> mhdp_core:phase/4_quest_cleared/back_home/setup/reward
#
# Phase4_クエストクリア 帰還処理 報酬チェスト用意

# 報酬チェストが空じゃない場合，中身を落とし物に移動
    function mhdp_core:phase/4_quest_cleared/back_home/setup/reward_

# 報酬チェストコピー
    clone 152 89 156 153 89 156 255 63 198
# 報酬リセット
    clone 152 87 156 153 87 156 152 89 156 replace

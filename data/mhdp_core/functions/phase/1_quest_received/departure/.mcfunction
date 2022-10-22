#> mhdp_core:phase/1_quest_received/departure/
#
# Phase1_クエスト受注 クエスト出発待機処理

# 音を鳴らす
    setblock 183 63 214 redstone_torch
    schedule function mhdp_core:phase/1_quest_received/remove_torch 2t

# クエスト出発確認
    execute if data storage mh_dp:status GameStatus{Phase:0} run tellraw @s {"text": "【クエストが受注されていません】"}
    execute if data storage mh_dp:status GameStatus{Phase:3} run tellraw @s {"text": "【クエストの終了をお待ちください】"}
    execute if data storage mh_dp:status GameStatus{Phase:4} run tellraw @s {"text": "【クエストの終了をお待ちください】"}
    execute if data storage mh_dp:status GameStatus{Phase:5} run tellraw @s {"text": "【クエストの終了をお待ちください】"}
    execute if data storage mh_dp:status GameStatus{Phase:1} at @s run function mhdp_core:phase/1_quest_received/departure/check

# 終了
    advancement revoke @s only mhdp_core:player/interracted_with_entity/bell
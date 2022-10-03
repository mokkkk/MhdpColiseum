#> mhdp_core:phase/2_quest_wait/
#
# Phase1_クエスト受注

# タイマー増加
    scoreboard players add #mhdp_quest_timer MhdpCore 1

# プレイヤーの動きを止める
    effect give @a slowness 1 100 true
    effect give @a jump_boost 1 128 true

# 出発ファンファーレを鳴らす

# クエスト出発
    execute if score #mhdp_quest_timer MhdpCore matches 40.. run function mhdp_core:phase/2_quest_wait/start_quest/

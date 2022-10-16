#> mhdp_core:phase/2_quest_wait/
#
# Phase2_クエスト出発待機

# タイマー増加
    scoreboard players add #mhdp_quest_timer MhdpCore 1

# プレイヤーの動きを止める
    effect give @a slowness 1 100 true
    effect give @a jump_boost 1 128 true

# HP・満腹度回復
    effect give @a instant_health 1 10 true
    effect give @a saturation 1 10 true

# 落とし物回収
    execute if score #mhdp_quest_timer MhdpCore matches 1 run function mhdp_core:phase/2_quest_wait/prepare/pick_item

# 出発ファンファーレを鳴らす

# 1秒後に盲目付与
    execute if score #mhdp_quest_timer MhdpCore matches 20 run effect give @a blindness 3 1 true

# 2秒後にクエスト出発
    execute if score #mhdp_quest_timer MhdpCore matches 40.. run function mhdp_core:phase/2_quest_wait/start_quest/

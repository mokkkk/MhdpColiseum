#> mhdp_core:phase/2_quest_wait/
#
# Phase2_クエスト出発待機

# タイマー増加
    scoreboard players add #mhdp_quest_timer MhdpCore 1

# プレイヤーの動きを止める
    effect give @a slowness 1 100 true
    effect give @a jump_boost 1 128 true

# HP・スタミナ回復
    effect give @a instant_health 1 10 true
    scoreboard players set @a MhdpStamina 1000

# 落とし物回収
    execute if score #mhdp_quest_timer MhdpCore matches 1 run function mhdp_core:phase/2_quest_wait/prepare/pick_item

# 出発ファンファーレを鳴らす
    execute if score #mhdp_quest_timer MhdpCore matches 10 at @p run playsound minecraft:custom.departure master @a ~ ~ ~ 3 1

# 1秒後に盲目付与
    execute if score #mhdp_quest_timer MhdpCore matches 20 run effect give @a blindness 3 1 true

# 2秒後にクエスト出発
    execute if score #mhdp_quest_timer MhdpCore matches 40.. run function mhdp_core:phase/2_quest_wait/start_quest/

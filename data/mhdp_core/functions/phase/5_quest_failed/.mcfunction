#> mhdp_core:phase/5_quest_failed/
#
# Phase5_クエスト失敗

# タイマー増加
    scoreboard players add #mhdp_quest_timer MhdpCore 1

# 念のためプレイヤー無敵化・移動を封じる
    effect give @a resistance 1 10 true
    effect give @a slowness 1 10 true
    effect give @a jump_boost 1 128 true
    effect give @a instant_health 1 10 true
    effect give @a saturation 1 10 true

# テキスト表示
    execute if score #mhdp_quest_timer MhdpCore matches 61 run tellraw @a {"text": "【クエストに失敗しました】"}

# 20秒後に拠点に帰還
    execute if score #mhdp_quest_timer MhdpCore matches 180.. run function mhdp_core:phase/5_quest_failed/back_home/

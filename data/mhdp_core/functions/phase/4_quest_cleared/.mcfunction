#> mhdp_core:phase/4_quest_cleared/
#
# Phase4_クエストクリア

# タイマー増加
    scoreboard players add #mhdp_quest_timer MhdpCore 1

# 念のためプレイヤー無敵化
    effect give @a resistance 1 10 true
    effect give @a instant_health 1 10 true
    effect give @a saturation 1 10 true

# テキスト表示
    execute if score #mhdp_quest_timer MhdpCore matches 1 run tellraw @a {"text": "【戦いに勝利した！】"}
    execute if score #mhdp_quest_timer MhdpCore matches 61 run tellraw @a {"text": "【目標を達成しました】"}
    execute if score #mhdp_quest_timer MhdpCore matches 121 run tellraw @a {"text": "【20秒後に拠点に帰還します】"}

# 20秒後に拠点に帰還
    execute if score #mhdp_quest_timer MhdpCore matches 400.. run function mhdp_core:phase/4_quest_cleared/back_home/

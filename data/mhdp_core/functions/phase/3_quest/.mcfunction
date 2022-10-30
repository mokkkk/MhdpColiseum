#> mhdp_core:phase/3_quest/
#
# Phase3_クエスト中待機

# 時間制限減算
    scoreboard players remove #mhdp_quest_timer MhdpCore 1
    execute if score #mhdp_quest_timer MhdpCore matches 6000 run tellraw @a {"text": "【残り時間5分です】"}
    execute if score #mhdp_quest_timer MhdpCore matches 1200 run tellraw @a {"text": "【残り時間1分です】"}
    execute if score #mhdp_quest_timer MhdpCore matches 1 run tellraw @a {"text": "【時間切れです】"}
    execute if score #mhdp_quest_timer MhdpCore matches ..0 run function mhdp_core:phase/3_quest/failed/

# マップ移動処理
    # 大闘技場
        execute positioned 191 66 145 as @a[distance=..2.5] run function mhdp_core:phase/3_quest/tp/1_colliseum

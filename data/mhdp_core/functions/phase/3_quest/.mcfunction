#> mhdp_core:phase/3_quest/
#
# Phase3_クエスト中待機

# 時間制限現象
    # scoreboard players add #mhdp_quest_timer MhdpCore 1

# マップ移動処理
    # 大闘技場
        execute positioned 191 66 145 as @a[distance=..2.5] run function mhdp_core:phase/3_quest/tp/1_colliseum

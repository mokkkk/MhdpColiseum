#> mhdp_core:phase/3_quest/check/death_
#
# Phase3_クエスト中 モンスター討伐数更新

# 討伐数更新
    scoreboard players remove #mhdp_quest_monster_count MhdpCore 1

# 討伐数が0になったとき，クエストクリア処理を走らせる
    execute if score #mhdp_quest_monster_count MhdpCore matches ..0 run function mhdp_core:phase/3_quest/clear/

#> mhdp_core:phase/3_quest/tutorial/message/
#
# Phase3_クエスト中 訓練中処理 メッセージ送り処理

# メッセージ表示
    execute if score #mhdp_temp_tutorial_timer MhdpCore matches 1 positioned -36 66 95 run playsound entity.villager.ambient master @a ~ ~ ~ 1 1.2
    execute if score #mhdp_temp_tutorial_timer MhdpCore matches 1 run tellraw @a [{"text": "教官「"},{"interpret":true,"nbt":"Tutorial.Messages[-1]","storage":"mhdp_core:temp"},{"text": "」"}]

# タイマー加算
    scoreboard players add #mhdp_temp_tutorial_timer MhdpCore 1

# メッセージ削除
    execute if score #mhdp_temp_tutorial_timer MhdpCore matches 85.. run data remove storage mhdp_core:temp Tutorial.Messages[-1]
    execute if score #mhdp_temp_tutorial_timer MhdpCore matches 85.. run scoreboard players set #mhdp_temp_tutorial_timer MhdpCore 0

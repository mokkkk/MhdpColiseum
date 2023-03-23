#> mhdp_core:phase/3_quest/tutorial/
#
# Phase3_クエスト中 訓練中処理
#declare tag PlyCallTutorialMessage

# メッセージ処理
    execute if data storage mhdp_core:temp Tutorial.Messages[-1] run function mhdp_core:phase/3_quest/tutorial/message/

# 手に持っているアイテムに応じたメッセージを表示する
    execute if entity @a[tag=PlyCallTutorialMessage] as @a[tag=PlyCallTutorialMessage] run function mhdp_core:phase/3_quest/tutorial/message/setup/

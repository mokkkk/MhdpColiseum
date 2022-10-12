#> mhdp_core:phase/3_quest/check/player_death
#
# Phase3_クエスト中 プレイヤー死亡時

# スコア減算
    scoreboard players remove #mhdp_quest_death_count MhdpCore 1

# メッセージ表示
    execute if score #mhdp_quest_death_count MhdpCore matches ..-1 run scoreboard players set #mhdp_quest_death_count MhdpCore 0
    tellraw @a [{"text": "【 "},{"selector":"@s"},{"text": "が力尽きた（残り回数 "},{"score":{"name":"#mhdp_quest_death_count","objective":"MhdpCore"}},{"text": "/3）】"}]

# クエスト失敗
    execute if score #mhdp_quest_death_count MhdpCore matches ..0 run function mhdp_core:phase/3_quest/failed/

say プレイヤー死亡 in mhdp_core:phase/3_quest/check/player_death
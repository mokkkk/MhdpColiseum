#> mhdp_core:phase/0_village/receive_quest/normal
#
# クエスト受注時実行処理（ノーマル）

# クエストID取得
    scoreboard players set #mhdp_quest_id MhdpCore -1
    data modify storage mhdp_core:temp Temp.Trade set from entity @e[type=wandering_trader,tag=VlgQuestNormal,limit=1] Offers.Recipes
    function mhdp_core:phase/0_village/receive_quest/normal_get_id

# エラーメッセージ
    execute if score #mhdp_quest_id MhdpCore matches ..-1 run tellraw @a {"text":"【ERROR:受注したクエストが見つかりませんでした】"}

# フェーズ変更
    execute if score #mhdp_quest_id MhdpCore matches 0.. run data modify storage mh_dp:status GameStatus.Phase set value 1

# 終了
    kill @e[type=item,limit=1,sort=nearest]
    clear @s paper{MhdpQuest:1} 64
    scoreboard players reset #mhdp_temp_uses
    data remove storage mhdp_core:temp Temp
    kill @e[type=experience_orb]

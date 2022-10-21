#> mhdp_core:phase/0_village/receive_quest/normal_set_id
#
# クエスト受注時実行処理（ノーマル） クエストID設定処理

# クエストID設定
    execute store result score #mhdp_quest_id MhdpCore run data get storage mhdp_core:temp Temp.Trade[-1].sell.tag.QuestId

# 村人取引内容リセット
    function mhdp_core:phase/0_village/villager/quest/

# 演出
    execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 0.5
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
    tellraw @a [{"text": "【"},{"selector":"@s"},{"text": "がクエストを受注した】"}]

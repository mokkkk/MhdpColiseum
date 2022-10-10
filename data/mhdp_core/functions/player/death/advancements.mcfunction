#> mhdp_core:player/death/advancements
#
# プレイヤー死亡時処理（advancements内）

# クエスト中の場合，リスポーン地点を更新しつつ死亡演出開始
    execute if entity @s[tag=PlyQuest] run spawnpoint @s ~ ~ ~
    execute if entity @s[tag=PlyQuest] run scoreboard players set @s MhdpTDeathAnimation 0
    execute if entity @s[tag=PlyQuest] run tag @s add PlyDeathAnimation

# tick実行用tag付与
    tag @s add PlyDead

#> mhdp_core:player/pre
#
# プレイヤー処理実行前にデータの取得・初期化を行う

# データ取得
    function oh_my_dat:please
    execute store result score #mhdp_temp_time MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time MhdpCore matches 1.. run function mhdp_core:player/data/get

# ニンジン棒クリック取得
    execute if entity @s[scores={MhdpUsedCoas=1..}] run tag @s add PlyUsedCoas

# スニーク状態取得
    function mhdp_core:player/sneak/get

# エンダーアイ使用状態取得
    execute if entity @s[scores={MhdpDropEnderEye=1..}] run tag @s add PlyDroppedEnderEye
    function mhdp_core:player/item/ender_eye/get

# 地上・空中状態取得
    execute if entity @s[nbt={OnGround:0b}] run tag @s add PlyJumpping

# クエスト中に食料レベルが一定以下の場合，ジャンプを禁じる
    execute store result score #mhdp_temp_food MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.FoodLevel
    execute if entity @s[tag=PlyQuest] if score #mhdp_temp_food MhdpCore matches ..6 run effect give @s jump_boost 1 128 true

# 拠点強制帰還
    # 非クエスト中：
        execute if entity @s[tag=PlyQuest] unless data storage mh_dp:status GameStatus{Phase:3} unless data storage mh_dp:status GameStatus{Phase:4} unless data storage mh_dp:status GameStatus{Phase:5} run function mhdp_core:phase/0_village/player/back_to_home_none_quest
    # クエスト中：
            # 現在時刻を取得
                execute store result score #mhdp_temp_time MhdpCore run data get storage mh_dp:status GameStatus.Quest.StartTime
                execute store result score #mhdp_temp_food MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.QuestTime
            # 減算
                scoreboard players operation #mhdp_temp_time MhdpCore -= #mhdp_temp_food MhdpCore
            # 比較
                execute if entity @s[tag=PlyQuest] if data storage mh_dp:status GameStatus{Phase:3} unless score #mhdp_temp_time MhdpCore matches 0 run function mhdp_core:phase/0_village/player/back_to_home_quest

# 終了
    scoreboard players reset #mhdp_temp_time
    scoreboard players reset #mhdp_temp_food

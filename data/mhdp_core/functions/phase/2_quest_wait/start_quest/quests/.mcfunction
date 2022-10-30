#> mhdp_core:phase/2_quest_wait/start_quest/quests/
#
# Phase1_クエスト受注 クエストデータ割り当て

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_monster_count

# 対象クエストを配列から取得
    # 配列コピー
        data modify storage array_util: Array set from storage mh_dp:quests List
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = #mhdp_quest_id MhdpCore
    # 移動
        function array_util:api/move
    # 配列コピー
        data modify storage array_util: Array set from storage array_util: Array[-1]

# クエストランク
    data modify storage mh_dp:settings Custom.QuestRank set from storage array_util: Array.QuestRank

# フィールド：
    data modify storage mh_dp:status GameStatus.Quest.Field set from storage array_util: Array.Field
        # 大闘技場：ID 1
           execute if data storage mh_dp:status GameStatus.Quest{Field:1} run spawnpoint @a 221 66 141

# 出現モンスター：
    data modify storage mh_dp:status GameStatus.Quest.Monsters set from storage array_util: Array.Monsters

# モンスター数
    execute store result score #mhdp_quest_monster_count MhdpCore run data get storage array_util: Array.MonsterCount

# ムービー再生
    data modify storage mh_dp:status GameStatus.Movie set from storage array_util: Array.Movie
    execute if data storage mh_dp:status GameStatus{Movie:1b} store result score #mhdp_quest_movie_id MhdpCore run data get storage array_util: Array.MovieId

# 報酬金
    item replace block 152 89 156 container.0 with emerald 1
    execute store result score #mhdp_temp_emerald MhdpCore run data get storage array_util: Array.Reward
    item modify block 152 89 156 container.0 mhdp_core:reward/emerald

# 制限時間
    execute store result score #mhdp_quest_timer MhdpCore run data get storage array_util: Array.Timer

# HP倍率
    execute store result score #mhdp_hp_multiply AsaMatrix run data get storage array_util: Array.HpMult

# 終了
    scoreboard players reset #mhdp_temp_emerald
    function array_util:api/force_delete_cache

# # 000 - テスト用クエスト
#     execute if score #mhdp_quest_id MhdpCore matches 0 run function mhdp_core:phase/2_quest_wait/start_quest/quests/000
# # 001 - テスト用クエスト
#     execute if score #mhdp_quest_id MhdpCore matches 1 run function mhdp_core:phase/2_quest_wait/start_quest/quests/001
# # 002 - テスト用クエスト
#     execute if score #mhdp_quest_id MhdpCore matches 2 run function mhdp_core:phase/2_quest_wait/start_quest/quests/002
# # 003 - テスト用クエスト
#     execute if score #mhdp_quest_id MhdpCore matches 3 run function mhdp_core:phase/2_quest_wait/start_quest/quests/003

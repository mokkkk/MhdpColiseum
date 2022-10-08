#> mhdp_core:phase/2_quest_wait/start_quest/quests/0
#
# テスト用クエスト

# クエストランク：ノーマル
    data modify storage mh_dp:settings Custom.QuestRank set value 0

# フィールド：
    # 大闘技場：ID 1
    data modify storage mh_dp:status GameStatus.Quest.Field set value 1
    spawnpoint @a 221 66 141
    # tp @a 221 66 141

# 出現モンスター：
    data modify storage mh_dp:status GameStatus.Quest.Monsters set value []
    # モンスター：火竜
    # 出現条件：最初から
        data modify storage mh_dp:status GameStatus.Quest.Monsters append value {Name:"Reus",Condition:0,Target:-1}

# モンスター数
    scoreboard players set #mhdp_quest_monster_count MhdpCore 1

# ムービー再生：なし
    data modify storage mh_dp:status GameStatus.Movie set value 0b

# 報酬準備
    # ...

# 制限時間：15分
    scoreboard players set #mhdp_quest_timer MhdpCore 15

# HP倍率：100%
    scoreboard players set #mhdp_hp_multiply AsaMatrix 100

say クエスト設定完了(ID:0)
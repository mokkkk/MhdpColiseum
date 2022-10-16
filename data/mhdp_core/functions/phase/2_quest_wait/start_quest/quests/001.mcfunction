#> mhdp_core:phase/2_quest_wait/start_quest/quests/001
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
# - 0：最初から
# - 1：Targetモンスターが倒されたら
# - 2：TargetモンスターのHPが50%以下になったら
# - 3：一定時間経過
    data modify storage mh_dp:status GameStatus.Quest.Monsters set value []
    # モンスター：火竜
    # 出現条件：最初から
        data modify storage mh_dp:status GameStatus.Quest.Monsters append value {Name:"Reus",Condition:0,Target:-1}

# モンスター数
    scoreboard players set #mhdp_quest_monster_count MhdpCore 1

# ムービー再生：なし
    data modify storage mh_dp:status GameStatus.Movie set value 0b

# 報酬準備
    loot insert 152 89 156 loot mhdp_core:bonus/reus
    loot insert 152 89 156 loot mhdp_core:bonus/reus
    loot insert 152 89 156 loot mhdp_core:bonus/reus
    execute if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus
    execute if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus
    execute if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus
    execute if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus
    execute if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus

# 制限時間：15分
    scoreboard players set #mhdp_quest_timer MhdpCore 15

# HP倍率：50%
    scoreboard players set #mhdp_hp_multiply AsaMatrix 50

say クエスト設定完了(ID:1)
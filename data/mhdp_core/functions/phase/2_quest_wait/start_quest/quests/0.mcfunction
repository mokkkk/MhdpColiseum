#> mhdp_core:phase/2_quest_wait/start_quest/quests/0
#
# テスト用クエスト

# クエストランク：ノーマル


# フィールド：大闘技場
    spawnpoint @a 221 66 141
    # data modify ...

# 出現モンスター：
    # モンスター：火竜
    # 出現条件：最初から
        # data modify ...

# ムービー再生：なし
    data modify storage mh_dp:status GameStatus.Movie set value 0b

# 報酬準備
    # ...

# 制限時間設定
    # ...

say クエスト設定完了(ID:0)
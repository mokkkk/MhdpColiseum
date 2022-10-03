#> mhdp_core:phase/1_quest_received/start_quest/
#
# Phase1_クエスト受注 クエスト開始処理

# プレイヤーUID割り当て
    # function ...

# プレイヤーの武器をstickからender_eyeに変更し，オフハンドにセット
    # function ...

# プレイヤーの特殊装具をstickからcarrot_on_a_stickに変更
    # function ...

# クエスト独自処理実行
    function mhdp_core:phase/1_quest_received/start_quest/quests/

# MhdpWeapons処理用（ムービー再生時以外）
    # execute unless data storage mh_dp:status GameStatus{Movie:1b} run tag @a add PlyQuest

# Phase変更
    # function ...

say 出発
#> mhdp_core:player/death/tick
#
# プレイヤー死亡時処理（tick内）

# クエスト中の場合，武器納刀処理実行
    execute if entity @s[tag=PlyQuest] run function mhdp_weapons:core/sheathe/weapon

# クエスト中の場合，死亡数カウント増加
    execute if entity @s[tag=PlyQuest] if data storage mh_dp:status GameStatus{Phase:3} run function mhdp_core:phase/3_quest/check/player_death

# リセット処理
    function mhdp_core:player/death/reset

# 終了
    tag @s remove PlyDead

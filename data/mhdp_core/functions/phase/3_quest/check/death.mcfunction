#> mhdp_core:phase/3_quest/check/death
#
# Phase3_クエスト中 討伐

# ID取得
    scoreboard players operation #mhdp_id_temp MhdpCore = @s MhdpCore

# 自分をTargetとしているモンスターがいる場合
    execute store result score #mhdp_target_temp MhdpCore run data get storage mh_dp:status GameStatus.Quest.Monsters[0].Target
    execute if score #mhdp_target_temp MhdpCore = #mhdp_id_temp MhdpCore run say 自分がターゲット(ID:0)
    scoreboard players reset #mhdp_id_temp

    execute store result score #mhdp_target_temp MhdpCore run data get storage mh_dp:status GameStatus.Quest.Monsters[1].Target
    execute if score #mhdp_target_temp MhdpCore = #mhdp_id_temp MhdpCore run say 自分がターゲット(ID:1)
    scoreboard players reset #mhdp_id_temp

    execute store result score #mhdp_target_temp MhdpCore run data get storage mh_dp:status GameStatus.Quest.Monsters[2].Target
    execute if score #mhdp_target_temp MhdpCore = #mhdp_id_temp MhdpCore run say 自分がターゲット(ID:2)

# モンスター討伐数更新
    function mhdp_core:phase/3_quest/check/death_

# 終了
    scoreboard players reset #mhdp_id_temp

say 討伐 in mhdp_core:phase/3_quest/check/death
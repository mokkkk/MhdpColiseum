#> mhdp_core:phase/3_quest/check/hp_half
#
# Phase3_クエスト中 体力半分

# ID取得
    scoreboard players operation #mhdp_id_temp MhdpCore = @s MhdpCore

# 自分をTargetとしているモンスターがいる場合
    execute store result score #mhdp_target_temp MhdpCore run data get storage mh_dp:status GameStatus.Quest.Monsters[1].Target
    execute if score #mhdp_target_temp MhdpCore = #mhdp_id_temp MhdpCore run function mhdp_core:phase/3_quest/check/hp_half/1
    scoreboard players reset #mhdp_target_temp

    execute store result score #mhdp_target_temp MhdpCore run data get storage mh_dp:status GameStatus.Quest.Monsters[2].Target
    execute if score #mhdp_target_temp MhdpCore = #mhdp_id_temp MhdpCore run function mhdp_core:phase/3_quest/check/hp_half/2

# 終了
    tag @s add HpHalf
    scoreboard players reset #mhdp_id_temp
    scoreboard players reset #mhdp_target_temp

say HP半分 in mhdp_core:phase/3_quest/check/hp_half
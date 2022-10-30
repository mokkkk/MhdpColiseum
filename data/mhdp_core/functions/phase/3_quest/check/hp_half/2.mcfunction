#> mhdp_core:phase/3_quest/check/hp_half/2
#
# Phase3_クエスト モンスター乱入 3匹目

# データ退避
    data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[2]
# ID決定
    scoreboard players set #mhdp_id_temp MhdpCore 3

# 召喚
    execute if data storage mhdp_core:temp Temp{Condition:2} positioned -94 66 120 run function mhdp_core:phase/3_quest/check/monsters/summon

# 終了
    data remove storage mhdp_core:temp Temp

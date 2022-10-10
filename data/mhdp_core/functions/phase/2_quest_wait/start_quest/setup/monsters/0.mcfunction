#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/0
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚 １匹目

# データ退避
    data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[0].Name
# ID決定
    scoreboard players set #mhdp_id_temp MhdpCore 1

# 火竜
    execute if data storage mhdp_core:temp {Temp:"Reus"} run function asa_animator:reus/manager/summon

# 終了
    data remove storage mhdp_core:temp Temp

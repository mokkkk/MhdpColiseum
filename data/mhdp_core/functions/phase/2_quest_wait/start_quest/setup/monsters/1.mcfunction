#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/1
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚 2匹目

# データ退避
    data modify storage mhdp_core:temp Temp set from storage mh_dp:status GameStatus.Quest.Monsters[1].Name
# ID決定
    scoreboard players set #mhdp_id_temp MhdpCore 2

# 召喚
    function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/summon

# 終了
    data remove storage mhdp_core:temp Temp

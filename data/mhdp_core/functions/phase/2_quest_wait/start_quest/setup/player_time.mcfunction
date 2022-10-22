#> mhdp_core:phase/2_quest_wait/start_quest/setup/player_time
#
# Phase1_クエスト受注 プレイヤーごとのクエスト開始時刻保存

# データアクセス準備
    function oh_my_dat:please

# 時刻保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.QuestTime set from storage mh_dp:status Time

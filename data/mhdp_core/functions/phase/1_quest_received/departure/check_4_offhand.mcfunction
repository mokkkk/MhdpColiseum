#> mhdp_core:phase/1_quest_received/departure/check_4_offhand
#
# Phase1_クエスト受注 クエスト出発条件確認 武器がオフハンドにない

# データ取得
    function oh_my_dat:please
    execute store result score #mhdp_temp_time MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time MhdpCore matches 1.. run function mhdp_core:player/data/get

# オフハンドが武器かどうか確かめる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add Check4

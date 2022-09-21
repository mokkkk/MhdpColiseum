#> mhdp_core:player/pre
#
# プレイヤー処理実行前にデータの取得・初期化を行う

# データ取得処理
    function oh_my_dat:please
    execute store result score #mhdp_temp_time MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time MhdpCore matches 1.. run function mhdp_core:player/data/get

# ニンジン棒クリック取得
    execute if entity @s[scores={MhdpUsedCoas=1..}] run tag @s add PlyUsedCoas

# スニーク状態取得
    function mhdp_core:player/sneak/
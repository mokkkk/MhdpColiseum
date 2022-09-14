#> mhdp_core:player/
#
# 各プレイヤーが毎tick実行する処理

# データ取得処理
    function oh_my_dat:please
    execute store result score #mhdp_temp_time MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time MhdpCore matches 1.. run function mhdp_core:player/data/get

# ニンジン棒クリック取得
    execute if entity @s[scores={MhdpUsedCoas=1..}] run tag @s add PlyUsedCoas

# MhdpWeapons処理実行
    # function ..............

# 終了
    scoreboard players reset #mhdp_temp_time
    scoreboard players set @s MhdpUsedCoas 0
    tag @s remove PlyUsedCoas

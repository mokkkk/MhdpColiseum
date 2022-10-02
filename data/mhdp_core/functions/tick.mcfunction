#> mhdp_core:tick
#
# 毎tick実行される処理
#
# @within tag/function minecraft:tick

# gameTime取得
    execute store result storage mh_dp:status Time int 1 run time query gametime

# phase毎の処理

# Player用処理
    execute as @a at @s run function mhdp_core:player/

#> mhdp_core:tick
#
# 毎tick実行される処理
#
# @within tag/function minecraft:tick

# gameTime取得
    execute store result storage mh_dp:status Time int 1 run time query gametime

# Player用処理
    function mhdp_core:player/

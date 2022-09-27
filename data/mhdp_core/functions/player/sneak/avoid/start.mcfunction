#> mhdp_core:player/sneak/avoid/start
#
# プレイヤースニーク検知用に実行する処理

# タグ付与
    tag @s add PlySneakDouble

# ロック中じゃない場合，スニーク回避処理の準備開始
    execute if entity @s[tag=!PlySneakAvoidLock] run function mhdp_core:player/sneak/avoid/start_

#> mhdp_core:player/end
#
# プレイヤー処理実行後にデータの消去・初期化を行う

# ニンジン棒クリックリセット
    scoreboard players set @s MhdpUsedCoas 0
    tag @s remove PlyUsedCoas

# スニーク状態リセット
    tag @s remove PlySneakStart
    tag @s remove PlySneakEnd
    
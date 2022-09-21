#> mhdp_core:player/jump/
#
# プレイヤージャンプ時に実行する処理


# ダッシュジャンプ時
    execute if predicate mhdp_core:player/stat/sprint run function mhdp_core:player/jump/sprint

# 終了
    scoreboard players set @s MhdpJump 0

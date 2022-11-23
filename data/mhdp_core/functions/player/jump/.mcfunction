#> mhdp_core:player/jump/
#
# プレイヤージャンプ時に実行する処理


# ダッシュ中ジャンプ時
    execute if entity @s[tag=!PlySneakCurrent,tag=!PlyStaminaPenalty] if predicate mhdp_core:player/stat/sprint run function mhdp_core:player/jump/sprint

# スニーク中ジャンプ時
    execute if entity @s[tag=PlySneakCurrent,tag=!PlyStaminaPenalty] unless entity @s[tag=PlySneakAvoidFunc] run function mhdp_core:player/sneak/avoid/start

# 終了
    scoreboard players set @s MhdpJump 0

#> mhdp_core:player/sneak/
#
# プレイヤースニーク開始時に実行する処理


# 2連続でスニークした
    execute if entity @s[scores={MhdpTSneakAvoid=1..}] run function mhdp_core:player/sneak/avoid/start

# スニークタイマーリセット
    execute if entity @s[tag=!PlyStartSneakAvoid] run scoreboard players set @s MhdpTSneakAvoid 7

# 終了
    tag @s remove PlyStartSneakAvoid
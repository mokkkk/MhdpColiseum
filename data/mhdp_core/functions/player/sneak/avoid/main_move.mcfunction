#> mhdp_core:player/sneak/avoid/main_move
#
# スニーク回避実行処理・移動

# 移動（水平）
    execute if block ^ ^ ^0.7 #mhdp_core:no_collision run tp @s ^ ^ ^0.7
    execute if block ^ ^ ^0.7 #mhdp_core:no_collision run tag @s add Moved
# 移動（１ブロック上昇）
    execute unless entity @s[tag=Moved] if block ^ ^1 ^0.7 #mhdp_core:no_collision run tp @s ^ ^1 ^0.7

# 終了
    tag @s remove Moved
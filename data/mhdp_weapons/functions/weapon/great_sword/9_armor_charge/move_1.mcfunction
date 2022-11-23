#> mhdp_weapons:weapon/great_sword/9_armor_charge/move_1
#
# ステップ回避実行処理・移動

# 頭の高さにブロックがある場合は移動しない
    execute unless block ^ ^1 ^0.3 #mhdp_core:no_collision run tag @s add Moved
# 移動（落下）
    execute unless entity @s[tag=Moved] if block ^ ^-1 ^0.3 #mhdp_core:no_collision run tp @s ^ ^-1 ^0.3
    execute unless entity @s[tag=Moved] if block ^ ^-1 ^0.3 #mhdp_core:no_collision run tag @s add Moved
# 移動（水平）
    execute unless entity @s[tag=Moved] if block ^ ^ ^0.3 #mhdp_core:no_collision run tp @s ^ ^ ^0.3
    execute unless entity @s[tag=Moved] if block ^ ^ ^0.3 #mhdp_core:no_collision run tag @s add Moved
# 移動（１ブロック上昇）
    execute unless entity @s[tag=Moved] unless block ^ ^ ^0.3 #mhdp_core:fences if block ^ ^1 ^0.3 #mhdp_core:no_collision run tp @s ^ ^1 ^0.3

# 終了
    playsound block.grass.step master @a ~ ~ ~ 1 1
    particle block grass_block ~ ~0.1 ~ 0.3 0 0.3 0 5
    tag @s remove Moved

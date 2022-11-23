#> mhdp_core:player/data/food_level_penalty
#
# 満腹度調整

# できるだけ2に合わせる
    execute if score #mhdp_temp_food MhdpCore matches 6.. run effect give @s hunger 1 126 true
    execute if score #mhdp_temp_food MhdpCore matches ..2 run effect give @s saturation 1 0 true

# ジャンプ禁止
    # effect give @s jump_boost 1 128 true
    execute if entity @s[scores={MhdpJump=1..}] run tp @s @s
    execute if entity @s[scores={MhdpJump=1..}] run tp @s ~ ~-0.1 ~
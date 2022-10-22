#> mhdp_core:player/data/food_level_normal
#
# 満腹度調整

# できるだけ4に合わせる
    execute if score #mhdp_temp_food MhdpCore matches 9.. run effect give @s hunger 1 126 true
    execute if score #mhdp_temp_food MhdpCore matches ..6 run effect give @s saturation 1 0 true
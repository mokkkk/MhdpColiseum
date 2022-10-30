#> mhdp_weapons:core/attack/sharpness/calc
#
# 攻撃時処理 斬れ味補正適用

# 取得
    scoreboard players set #mhdp_sharp_multiply MhdpCore 50
    execute if score #mhdp_temp_sharp_color MhdpCore matches 0 run scoreboard players set #mhdp_sharp_multiply MhdpCore 30
    execute if score #mhdp_temp_sharp_color MhdpCore matches 1 run scoreboard players set #mhdp_sharp_multiply MhdpCore 50
    execute if score #mhdp_temp_sharp_color MhdpCore matches 2 run scoreboard players set #mhdp_sharp_multiply MhdpCore 100
    execute if score #mhdp_temp_sharp_color MhdpCore matches 3 run scoreboard players set #mhdp_sharp_multiply MhdpCore 105
    execute if score #mhdp_temp_sharp_color MhdpCore matches 4 run scoreboard players set #mhdp_sharp_multiply MhdpCore 120
    execute if score #mhdp_temp_sharp_color MhdpCore matches 5 run scoreboard players set #mhdp_sharp_multiply MhdpCore 132
    execute if score #mhdp_temp_sharp_color MhdpCore matches 6 run scoreboard players set #mhdp_sharp_multiply MhdpCore 140

# 適用
    scoreboard players operation #mhdp_temp_damage MhdpCore *= #mhdp_sharp_multiply MhdpCore
    scoreboard players operation #mhdp_temp_damage MhdpCore /= #asam_const_100 AsaMatrix
    scoreboard players operation #mhdp_temp_element_damage MhdpCore *= #mhdp_sharp_multiply MhdpCore
    scoreboard players operation #mhdp_temp_element_damage MhdpCore /= #asam_const_100 AsaMatrix

# 終了
    scoreboard players reset #mhdp_sharp_multiply
    scoreboard players reset #mhdp_temp_sharp_color_current
    scoreboard players reset #mhdp_temp_sharp_color
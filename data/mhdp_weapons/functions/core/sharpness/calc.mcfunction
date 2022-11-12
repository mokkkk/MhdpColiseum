#> mhdp_weapons:core/sharpness/calc
#
# 切れ味色決定

# 色決定
    
    scoreboard players set #mhdp_temp_sharp_sum MhdpCore 0
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/0
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/1
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/2
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/3
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/4
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/5
    execute unless entity @s[tag=Decided] run function mhdp_weapons:core/sharpness/6

# エラーメッセージ
    execute unless entity @s[tag=Decided] run tellraw @a {"text":"【エラー：切れ味が最大値を超えています】"}
    execute unless entity @s[tag=Decided] run scoreboard players set #mhdp_temp_sharp_color MhdpCore 6

# 終了
    tag @s remove Decided
    scoreboard players reset #mhdp_temp_sharp
    scoreboard players reset #mhdp_temp_sharp_sum
    scoreboard players reset #mhdp_temp_sharp_current

#> mhdp_core:phase/4_quest_cleared/back_home/setup/weapon_sharpness
#
# Phase4_クエストクリア 帰還処理 プレイヤー武器リセット 切れ味処理

# 強制的に匠非発動時の斬れ味にする
    data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMax
# 色設定
    # 切れ味取得
        execute store result score #mhdp_temp_sharp_current MhdpCore run data get storage mhdp_core:temp Temp.Status.SharpnessCurrent
        scoreboard players set #mhdp_temp_sharp_sum MhdpCore 0
    # 色決定
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/0
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/1
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/2
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/3
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/4
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/5
        execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/6
        execute unless entity @s[tag=MhdpSharpEnd] run scoreboard players set #mhdp_temp_sharp_color MhdpCore 6
        execute store result storage mhdp_core:temp Temp.Status.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color MhdpCore

# 終了
    tag @s remove MhdpSharpEnd
    scoreboard players reset #mhdp_temp_sharp
    scoreboard players reset #mhdp_temp_sharp_current
    scoreboard players reset #mhdp_temp_sharp_sum
    scoreboard players reset #mhdp_temp_sharp_color
#> mhdp_core:phase/2_quest_wait/start_quest/setup/weapon_craft
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー武器セット（匠）

# SharpnessCurrentにSharpnessMaxCraftの値を代入
    data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMaxCraft

# SharpnessColorに計算した色を代入
    execute store result score #mhdp_temp_sharp_current MhdpCore run data get storage mhdp_core:temp Temp.Status.SharpnessCurrent
    function mhdp_weapons:core/sharpness/calc
    execute store result storage mhdp_core:temp Temp.Status.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color AsaMatrix

# 終了
    scoreboard players reset #mhdp_temp_sharp_color

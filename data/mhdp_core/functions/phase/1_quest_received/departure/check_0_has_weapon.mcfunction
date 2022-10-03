#> mhdp_core:phase/1_quest_received/departure/check_0_has_weapon
#
# Phase1_クエスト受注 クエスト出発条件確認 武器を持っていない

# 武器個数確認
    execute store result score #mhdp_temp_count MhdpCore run clear @s ender_eye{MhdpWeapon:1b} 0
    execute if score #mhdp_temp_count MhdpCore matches ..0 run tag @s add Check0

# 終了
    scoreboard players reset #mhdp_temp_count

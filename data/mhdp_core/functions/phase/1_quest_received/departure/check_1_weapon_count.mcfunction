#> mhdp_core:phase/1_quest_received/departure/check_1_weapon_count
#
# Phase1_クエスト受注 クエスト出発条件確認 武器を2本以上持っている

# 武器個数確認
    execute store result score #mhdp_temp_count MhdpCore run clear @s ender_eye{MhdpWeapon:1b} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run tag @s add Check1

# 終了
    scoreboard players reset #mhdp_temp_count MhdpCore


# 確定
    execute if score #mhdp_temp_min MhdpCore matches 1.. run loot insert 152 89 156 loot mhdp_core:bonus/reus
# 確率
    execute if score #mhdp_temp_min MhdpCore matches ..0 if predicate asa_animator:random/050 run loot insert 152 89 156 loot mhdp_core:bonus/reus

# 減算
    scoreboard players remove #mhdp_temp_count MhdpCore 1
    scoreboard players remove #mhdp_temp_min MhdpCore 1

# 個数だけ繰り返す
    execute if score #mhdp_temp_count MhdpCore matches 1.. run function mhdp_core:phase/2_quest_wait/start_quest/setup/rewards/reus/normal
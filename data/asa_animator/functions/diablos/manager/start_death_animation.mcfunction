scoreboard players set @s AsaMatrix 0
function asa_animator:diablos/manager/remove_animation_tag
tag @s add AnmDeath

# 当たり判定削除
function asa_animator:diablos/manager/health/kill

# 討伐時処理
    execute as @e[type=armor_stand,tag=DiablosRoot] run function mhdp_core:phase/3_quest/check/death

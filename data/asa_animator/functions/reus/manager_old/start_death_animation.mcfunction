scoreboard players set @s AsaMatrix 0
function asa_animator:reus/manager/remove_animation_tag
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath
execute unless entity @s[tag=IsFlying] run tag @s add AnmDeath
# 当たり判定削除
function asa_animator:reus/manager/health/kill

# 討伐時処理
    execute as @e[type=armor_stand,tag=ReusRoot] run function mhdp_core:phase/3_quest/check/death

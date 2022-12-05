
summon marker ~ ~ ~ {Tags:["BackPos"]}
execute at @s align xyz as @e[type=marker,tag=BackPos] facing entity @e[type=marker,tag=CenterPos,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute as @e[type=marker,tag=BackPos] at @s run function asa_animator:general/back_
execute as @e[type=marker,tag=BackPos] at @s run tp @s ^ ^ ^2.5
execute positioned as @e[type=marker,tag=BackPos,limit=1] run tp @s ~ ~ ~
# 埋まってどこかに行く対策
execute if score #mhdp_back_count MhdpCore matches 10.. at @s positioned ~ ~10 ~ run function asa_animator:general/check_ground
scoreboard players reset #mhdp_back_count MhdpCore
kill @e[type=marker,tag=BackPos]


summon marker ~ ~ ~ {Tags:["BackPos"]}
execute at @s align xyz as @e[type=marker,tag=BackPos] facing entity @e[type=marker,tag=CenterPos,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute as @e[type=marker,tag=BackPos] at @s run function asa_animator:general/back_
execute as @e[type=marker,tag=BackPos] at @s run tp @s ^ ^ ^2.5
execute positioned as @e[type=marker,tag=BackPos,limit=1] run tp @s ~ ~ ~
function asa_animator:general/check_ground
# 埋まってどこかに行く対策
execute if score #mhdp_back_count MhdpCore matches 10.. positioned ~ ~10 ~ run function asa_animator:general/check_ground
kill @e[type=marker,tag=BackPos]

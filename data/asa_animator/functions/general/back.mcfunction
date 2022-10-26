
summon marker ~ ~ ~ {Tags:["BackPos"]}
execute at @s align xyz as @e[type=marker,tag=BackPos] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute as @e[type=marker,tag=BackPos] at @s run function asa_animator:general/back_
execute positioned as @e[type=marker,tag=BackPos,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=BackPos]
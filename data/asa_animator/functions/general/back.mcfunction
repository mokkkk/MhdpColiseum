
summon marker ~ ~ ~ {Tags:["BackPos"]}
execute at @s align xyz as @e[type=marker,tag=BackPos] facing entity @e[type=marker,tag=CenterPos,limit=1] feet run tp @s ~ ~ ~ ~ 0
execute as @e[type=marker,tag=BackPos] at @s run function asa_animator:general/back_
execute positioned as @e[type=marker,tag=BackPos,limit=1] run tp @s ~ ~ ~
execute positioned as @e[type=marker,tag=BackPos,limit=1] run particle flame ~ ~ ~ 0 0 0 1 100 force
kill @e[type=marker,tag=BackPos]
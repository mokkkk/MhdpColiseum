
execute rotated as @s positioned 0 0 0 positioned ^ ^0.5 ^3 run summon arrow ~ ~ ~ {Tags:["TestArrow","Start"]}
execute as @e[type=arrow,tag=TestArrow,tag=Start] at @s run data modify entity @s Motion set from entity @s Pos
execute positioned ~ ~1.65 ~ positioned ^ ^ ^1 as @e[type=arrow,tag=TestArrow,tag=Start] run tp @s ~ ~ ~ ~ ~
data modify entity @e[type=arrow,tag=TestArrow,tag=Start,limit=1] Rotation set from entity @s Rotation
tag @e[type=arrow,tag=TestArrow,tag=Start] remove Start

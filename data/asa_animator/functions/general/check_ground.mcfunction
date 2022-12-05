
summon marker ~ ~ ~ {Tags:["GroundPos"]}
execute align y as @e[type=marker,tag=GroundPos] at @s run tp @s ~ ~ ~
execute as @e[type=marker,tag=GroundPos] at @s run function asa_animator:general/check_ground_
execute positioned as @e[type=marker,tag=GroundPos,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=GroundPos]
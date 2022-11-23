
summon marker ~ ~ ~ {Tags:["GroundPos"]}
execute at @s align y as @e[type=marker,tag=GroundPos] run tp @s ~ ~ ~
execute as @e[type=marker,tag=GroundPos] at @s run function mhdp_weapons:weapon/short_sword/10_fall/move_
execute positioned as @e[type=marker,tag=GroundPos,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=GroundPos]
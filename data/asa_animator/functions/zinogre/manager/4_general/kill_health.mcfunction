#> asa_animator:zinogre/manager/4_general/kill_health
#
# 雷狼竜 消去処理 当たり判定消去

execute as @e[type=slime,tag=ZinogreParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=ZinogreParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=ZinogreParts] add Death
kill @e[type=slime,tag=ZinogreParts]

# 矢召喚
execute positioned ~ ~1.65 ~ run summon arrow ^ ^ ^1 {Owner:[I;0,0,0,0],Tags:["TestArrow","Start"]}

# Dir決定用AreaEffectCloud召喚
summon marker ^ ^ ^1 {Tags:["DirTarget"]}

# ポジション取得
data modify storage mhdp_core:temp Temp.Pos0 set from entity @s Pos
data modify storage mhdp_core:temp Temp.Pos1 set from entity @e[type=marker,tag=DirTarget,limit=1] Pos
execute as @s store result score #mhdp_temp_0 MhdpCore run data get storage mhdp_core:temp Temp.Pos0[0] 100
execute as @s store result score #mhdp_temp_1 MhdpCore run data get storage mhdp_core:temp Temp.Pos1[0] 100
scoreboard players operation #mhdp_temp_1 MhdpCore -= #mhdp_temp_0 MhdpCore
execute as @e[tag=TestArrow,tag=Start] store result entity @s Motion[0] double 0.04 run scoreboard players get #mhdp_temp_1 MhdpCore

execute as @s store result score #mhdp_temp_0 MhdpCore run data get storage mhdp_core:temp Temp.Pos0[1] 100
execute as @s store result score #mhdp_temp_1 MhdpCore run data get storage mhdp_core:temp Temp.Pos1[1] 100
scoreboard players operation #mhdp_temp_1 MhdpCore -= #mhdp_temp_0 MhdpCore
execute as @e[tag=TestArrow,tag=Start] store result entity @s Motion[1] double 0.04 run scoreboard players get #mhdp_temp_1 MhdpCore

execute as @s store result score #mhdp_temp_0 MhdpCore run data get storage mhdp_core:temp Temp.Pos0[2] 100
execute as @s store result score #mhdp_temp_1 MhdpCore run data get storage mhdp_core:temp Temp.Pos1[2] 100
scoreboard players operation #mhdp_temp_1 MhdpCore -= #mhdp_temp_0 MhdpCore
execute as @e[tag=TestArrow,tag=Start] store result entity @s Motion[2] double 0.04 run scoreboard players get #mhdp_temp_1 MhdpCore

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_0
    scoreboard players reset #mhdp_temp_1
    tag @e[tag=TestArrow,tag=Start] remove Start
    kill @e[type=marker,tag=DirTarget]

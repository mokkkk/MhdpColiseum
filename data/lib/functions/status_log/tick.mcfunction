#> lib:status_log/tick
#
#
#
# @within function core:tick/

# 位置をどんどん上げてく
    execute if entity @s[scores={MhdpCore=..7}] run tp @s ~ ~0.15 ~
    execute if entity @s[scores={MhdpCore=8..}] run tp @s ~ ~0.01 ~
# 一定tickで削除する
    scoreboard players add @s MhdpCore 1
    execute if score @s MhdpCore matches 40.. run kill @s
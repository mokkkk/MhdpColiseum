#> mhdp_weapons:sp_items/wirebug/cooltime
#
# 翔蟲 tick処理

# タイマー減少
    execute if entity @s[tag=!SklToolSp] run scoreboard players remove @s MhdpTItmWirebugCooltime 2
    execute if entity @s[tag=SklToolSp] run scoreboard players remove @s MhdpTItmWirebugCooltime 3
    
# 再使用可能
    execute if entity @s[scores={MhdpTItmWirebugCooltime=..0}] run function mhdp_weapons:sp_items/wirebug/cooltime_end

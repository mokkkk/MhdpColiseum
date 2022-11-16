#> mhdp_weapons:sp_items/immovable/cooltime
#
# 不動の装衣 tick処理

# タイマー減少
    execute if entity @s[tag=!SklToolSp] run scoreboard players remove @s MhdpTItmImmovableCooltime 2
    execute if entity @s[tag=SklToolSp] run scoreboard players remove @s MhdpTItmImmovableCooltime 3
    
# 再使用可能
    execute if entity @s[scores={MhdpTItmImmovableCooltime=..0}] run function mhdp_weapons:sp_items/immovable/cooltime_end

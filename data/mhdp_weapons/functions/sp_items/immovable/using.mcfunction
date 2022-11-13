#> mhdp_weapons:sp_items/immovable/using
#
# 不動の装衣 tick処理

# タイマー減少
    scoreboard players remove @s MhdpTItmImmovable 1
    
# 一定時間で効果解除
    execute if entity @s[scores={MhdpTItmImmovable=..0}] run function mhdp_weapons:sp_items/immovable/end

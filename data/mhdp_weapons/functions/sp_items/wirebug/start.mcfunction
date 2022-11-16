#> mhdp_weapons:sp_items/wirebug/start
#
# 翔蟲 使用開始処理

# 確認
    execute if entity @s[tag=!ItmUseWirebug,tag=!ItmCoolWirebug] run function mhdp_weapons:sp_items/wirebug/start_
    execute if entity @s[tag=ItmCoolWirebug] run tellraw @s {"text": "【クールタイムが終了していません】"}

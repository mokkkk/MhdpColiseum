#> mhdp_weapons:sp_items/wirebug/
#
# 翔蟲 tick処理
#declare tag PlyItmWirebug アイテム所持判別用
#declare tag ItmUseWirebug アイテム使用判別用
#declare tag ItmCoolWirebug アイテムクールタイム判別用

# 使用中
    execute if entity @s[tag=ItmUseWirebug] run function mhdp_weapons:sp_items/wirebug/using

# クールタイム中
    execute if entity @s[tag=ItmCoolWirebug] run function mhdp_weapons:sp_items/wirebug/cooltime

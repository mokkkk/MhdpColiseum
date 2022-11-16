#> mhdp_weapons:sp_items/
#
# 各特殊装具への分岐

# 不動の装衣
    execute if entity @s[tag=PlyItmImmovable] run function mhdp_weapons:sp_items/immovable/
# 翔蟲
    execute if entity @s[tag=PlyItmWirebug] run function mhdp_weapons:sgimp_items/wirebug/

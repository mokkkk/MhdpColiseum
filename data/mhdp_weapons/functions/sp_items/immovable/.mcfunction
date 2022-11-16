#> mhdp_weapons:sp_items/immovable/
#
# 不動の装衣 tick処理
#declare tag PlyItmImmovable アイテム所持判別用
#declare tag ItmUseImmovable アイテム使用判別用
#declare tag ItmCoolImmovable アイテムクールタイム判別用

# 使用中
    execute if entity @s[tag=ItmUseImmovable] run function mhdp_weapons:sp_items/immovable/using

# クールタイム中
    execute if entity @s[tag=ItmCoolImmovable] run function mhdp_weapons:sp_items/immovable/cooltime

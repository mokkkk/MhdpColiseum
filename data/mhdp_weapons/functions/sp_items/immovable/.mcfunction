#> mhdp_weapons:sp_items/immovable/
#
# 不動の装衣 tick処理
#declare tag PlyItmImmovable アイテム所持判別用
#declare tag ItmUseImmovable アイテム使用判別用
#declare tag ItmCoolImmovable アイテムクールタイム判別用

# タイマー減少
    scoreboard players remove @s MhdpTItmImmovable 1
    
# 一定時間で効果解除
    execute if entity @s[scores={MhdpTItmImmovable=..0}] run function mhdp_weapons:sp_items/immovable/end

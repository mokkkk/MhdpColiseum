#> mhdp_weapons:sp_items/immovable/reset_all
#
# 不動の装衣 完全リセット処理

# タグ消去
    tag @s remove PlyItmImmovable
    tag @s remove ItmUseImmovable
    tag @s remove ItmCoolImmovable
    scoreboard players reset @s MhdpTItmImmovable
    scoreboard players reset @s MhdpTItmImmovableCooltime

#> mhdp_weapons:sp_items/wirebug/reset_all
#
# 翔蟲 完全リセット処理

# タグ消去
    tag @s remove PlyItmWirebug
    tag @s remove ItmUseWirebug
    tag @s remove ItmCoolWirebug

# marker削除
    kill @e[type=marker,tag=WirebugStand]

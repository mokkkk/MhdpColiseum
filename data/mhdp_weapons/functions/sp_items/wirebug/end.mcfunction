#> mhdp_weapons:sp_items/wirebug/end
#
# 翔蟲 終了処理

# クールタイム設定
    scoreboard players set @s MhdpTItmWirebugCooltime 400

# タグ解除
    tag @s remove ItmUseWirebug
    tag @s add ItmCoolWirebug
    tag @s remove PlyArmorHyper

# 演出
    # ...

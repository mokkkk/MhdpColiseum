#> mhdp_weapons:sp_items/drop/
#
# 特殊装具投げ捨て時

# 投げた特殊装具を取得
    data modify storage mhdp_core:temp Temp.ItemData set from entity @e[type=item,limit=1,sort=nearest]

# 特殊装具だった場合，clearの後give
    execute if data storage mhdp_core:temp Temp.ItemData.Item.tag{MhdpSpItem:1b} run function mhdp_weapons:sp_items/drop/give

# 投げた特殊装具を削除
    kill @e[type=item,nbt={Item:{tag:{MhdpSpItem:1b}}}]
    data remove storage mhdp_core:temp Temp

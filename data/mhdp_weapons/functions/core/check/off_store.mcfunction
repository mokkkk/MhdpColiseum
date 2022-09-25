#> mhdp_weapons:core/check/off_store
#
# 強制納刀用オフハンドアイテムの保存

# オフハンドアイテム保持
    data modify storage mhdp_core:temp Temp2 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand

# 終了
    tag @s add StoreOffItem

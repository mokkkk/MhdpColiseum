#> mhdp_weapons:core/sheathe/force_off
#
# 強制納刀用オフハンドアイテムの移動

# shulker_boxにオフハンドをコピー
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag

# オフハンドをメインハンドにコピー
    item replace entity @s weapon.mainhand from block 0 0 0 container.0

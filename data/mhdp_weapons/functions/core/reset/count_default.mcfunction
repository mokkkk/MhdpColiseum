#> mhdp_weapons:core/reset/count_default
#
# 武器増殖対策，武器がオフハンド以外にある場合

# どこかにある武器を消去
    execute run clear @s ender_eye{MhdpWeapon:1b} 64

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag

# 退避した武器データをオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

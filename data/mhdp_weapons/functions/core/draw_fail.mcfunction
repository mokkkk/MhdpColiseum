#> mhdp_weapons:core/draw_fail
#
# 抜刀失敗時，アイテムを戻す

# shulker_boxにオフハンドをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag

# オフハンドをメインハンドにコピー
    item replace entity @s weapon.mainhand from block 0 0 0 container.0

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag

# 退避した武器データをオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

# 警告文表示
    # ここの文言を考える
    say メインハンドが空じゃないと抜刀できないよ

# 終了
    data remove block 0 0 0 Items

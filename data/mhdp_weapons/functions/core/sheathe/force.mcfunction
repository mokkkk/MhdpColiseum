#> mhdp_weapons:core/sheathe/force
#
# メインハンドに武器を持っていないとき，強制納刀

# 抜刀中タグ消去
    tag @s remove PlyWeaponDrawing

# shulker_box処理用アイテム補充
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]

# どこかにある武器を消去
    clear @s ender_eye{MhdpWeapon:1b} 64
    
# オフハンドにアイテムがある場合：アイテムをメインハンドにコピー
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run function mhdp_weapons:core/sheathe/force_off

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag

# 退避した武器データをオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

# 警告文表示
    # ここの文言を考える
    say 強制納刀

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 0.7

# 終了
    data remove block 0 0 0 Items

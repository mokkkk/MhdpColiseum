#> mhdp_weapons:core/sheathe/force
#
# メインハンドに武器を持っていないとき，強制納刀

# shulker_box処理用アイテム補充
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]

# どこかにある武器を消去
    clear @s ender_eye{MhdpWeapon:1b} 64
# サブ武器有りの場合：どこかにあるサブ武器を消去
    clear @s ender_eye{MhdpWeaponSub:1b} 64
    
# オフハンドにアイテムがある場合：アイテムをメインハンドにコピー
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeaponSub:1b} run function mhdp_weapons:core/sheathe/force_off

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

# 退避した武器データをオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag set from storage mhdp_core:temp Temp

# 武器に応じた納刀処理
    function mhdp_weapons:core/sheathe/weapon

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 0.7

# 抜刀中タグ消去
    tag @s remove PlyWeaponDrawing
    tag @s remove PlyWeaponDrawingSub
    
# 終了
    data remove storage mhdp_core:temp Temp
    data remove block 0 0 0 Items[{Slot:0b}]

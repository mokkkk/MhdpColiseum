#> mhdp_weapons:core/draw/sub/
#
# サブ武器を抜刀し，オフハンドに持つ

# サブ武器抜刀中タグ付与
    tag @s add PlyWeaponDrawingSub

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 1b
    # メイン武器・サブ武器フラグ変更
        data modify storage mhdp_core:temp Temp.MhdpWeapon set value 0b
        data modify storage mhdp_core:temp Temp.MhdpWeaponSub set value 1b
    # モデル変更
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 2
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore

    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

# サブ武器をオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag set from storage mhdp_core:temp Temp

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_cmd MhdpCore
    data remove block 0 0 0 Items[{Slot:0b}]

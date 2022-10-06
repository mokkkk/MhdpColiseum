#> mhdp_core:phase/2_quest_wait/start_quest/setup/weapon
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー武器セット

# データ取得
    function oh_my_dat:please
    execute store result score #mhdp_temp_time MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time MhdpCore matches 1.. run function mhdp_core:player/data/get

# shulker_box処理用アイテム補充
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    # 必要なデータのみコピーする
        data modify storage mhdp_core:temp Temp set value {display:{},Status:{},CustomModelData:100,HideFlags:2,MhdpWeapon:1b,MhdpWeaponSub:0b,IsDrawing:0b}
        data modify storage mhdp_core:temp Temp.display set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.display
        data modify storage mhdp_core:temp Temp.Status set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status
    # 匠時，切れ味設定
        execute if entity @s[tag=SklHandicraft] run function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon_craft
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

    # 退避した武器データをオフハンドにコピー
        item replace entity @s weapon.offhand from block 0 0 0 container.0

# 終了
    data remove storage mhdp_core:temp Temp

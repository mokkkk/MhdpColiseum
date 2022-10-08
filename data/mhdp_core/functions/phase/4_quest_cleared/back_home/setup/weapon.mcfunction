#> mhdp_core:phase/4_quest_cleared/back_home/setup/weapon
#
# Phase4_クエストクリア 帰還処理 プレイヤー武器リセット

# すでにクエスト中に武器データ取得を終えているので，データは取得しない
# どこかにある武器を消去
    clear @s ender_eye{MhdpWeapon:1b} 64

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
    # 切れ味設定
    # 強制的に匠非発動時の切れ味にする
        data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMax
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

    # 退避した武器データをオフハンドにコピー
        item replace entity @s weapon.offhand from block 0 0 0 container.0

# 武器タグ消去
        tag @s remove PlyWpnBow

# 終了
    data remove storage mhdp_core:temp Temp

#> mhdp_core:phase/2_quest_wait/start_quest/setup/weapon
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー武器セット

# すでに出発条件確認でデータ取得を終えているので，データは取得しない
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
        execute unless entity @s[tag=SklHandicraft] run data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMax
        execute if entity @s[tag=SklHandicraft] run function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon_craft
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

    # 退避した武器データをオフハンドにコピー
        item replace entity @s weapon.offhand from block 0 0 0 container.0

# 武器種に応じてタグを付与
    # 1：弓
        execute if data storage mhdp_core:temp Temp.Status{WeaponType:1} run tag @s add PlyWpnBow

# 終了
    data remove storage mhdp_core:temp Temp

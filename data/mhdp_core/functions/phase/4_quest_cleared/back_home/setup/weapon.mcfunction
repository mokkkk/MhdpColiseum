#> mhdp_core:phase/4_quest_cleared/back_home/setup/weapon
#
# Phase4_クエストクリア 帰還処理 プレイヤー武器リセット

# データ取得準備
    function oh_my_dat:please

# 武器の行動中断処理
    function mhdp_weapons:core/interruption/

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
    # 斬れ味設定
        execute if entity @s[tag=!PlyWpnBow] run function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon_sharpness
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

    # 退避した武器データをオフハンドにコピー
        item replace entity @s weapon.offhand from block 0 0 0 container.0

# 武器タグ消去
        tag @s remove PlyWpnBow
        tag @s remove PlyWpnGsword
        tag @s remove PlyWpnSsword

# UI消去
    title @a actionbar {"text": ""}

# スタミナリセット
    scoreboard players set @a MhdpStamina 1000
    tag @a remove PlyStaminaPenalty

# 終了
    data remove storage mhdp_core:temp Temp

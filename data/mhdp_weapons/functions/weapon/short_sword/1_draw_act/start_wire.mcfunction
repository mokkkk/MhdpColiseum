#> mhdp_weapons:weapon/short_sword/1_draw_act/start_wire
#
# 片手剣：抜刀攻撃（突進斬り） 実行 鉄蟲糸技

# 武器移動処理
    # shulker_boxに武器データをコピー
        data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
        data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
        data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
        data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
        data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp
    # 退避した武器データをメインハンドにコピー
        item replace entity @s weapon.mainhand from block 0 0 0 container.0
    # オフハンドを空武器にする
        item replace entity @s weapon.offhand with air
        data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand

# 片手剣抜刀処理
    function mhdp_weapons:weapon/short_sword/97_draw/
    tag @s add PlyWeaponDrawing

# 抜刀攻撃開始処理
    # アニメーションタイマーリセット
        scoreboard players set @s MhdpWeaponTimer 0
    # タグ更新
        tag @s add WpnSsword15Wire
    # ステップ回避ロック開始
        tag @s add PlySneakAvoidLock
    # 抜刀検知タグ追加
        tag @s add PlyDrawAttack
    # 翔蟲抜刀検知タグ追加
        tag @s add PlyDrawAttackWirebug

# 抜刀演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 1

# 終了
    data remove storage mhdp_core:temp Temp

# 翔蟲使用中止
    function mhdp_weapons:sp_items/wirebug/reset

say 飛影
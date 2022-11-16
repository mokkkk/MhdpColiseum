#> mhdp_weapons:weapon/short_sword/97_draw/
#
# 片手剣の抜刀処理
#

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 1b
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/short_sword/draw
# サブ武器抜刀
    item replace entity @s weapon.offhand with ender_eye
    # Cmd計算
        scoreboard players add #mhdp_temp_cmd MhdpCore 20
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # サブ武器フラグ変更
        data modify storage mhdp_core:temp Temp.MhdpWeaponSub set value 1b
    item modify entity @s weapon.offhand mhdp_core:const/short_sword/draw_sub
# プレイヤーデータ書き換え
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand set from entity @s Inventory[{Slot:-106b}]

# サブ武器抜刀中タグ付与
    tag @s add PlyWeaponDrawingSub

# リセット処理
     function mhdp_weapons:weapon/short_sword/99_reset/

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag set from storage mhdp_core:temp Temp

say 片手剣抜刀処理
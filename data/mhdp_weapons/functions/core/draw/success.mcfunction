#> mhdp_weapons:core/draw/success
#
# 抜刀成功時

# 抜刀中タグ付与
    tag @s add PlyWeaponDrawing

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 1b
    item modify entity @s weapon.mainhand mhdp_core:weapon/change_draw

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag set from storage mhdp_core:temp Temp

# サブ武器が存在する武器種の場合
    # function mhdp_weapons:core/draw/sub/

# 武器に応じた納刀処理
    function mhdp_weapons:core/draw/weapon

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 1

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp

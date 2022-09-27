#> mhdp_weapons:core/sheathe/success
#
# 納刀成功時

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage mhdp_core:temp Temp.Status.CmdOffset
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    item modify entity @s weapon.offhand mhdp_core:weapon/change_draw

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag set from storage mhdp_core:temp Temp
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag.CustomModelData set from storage mhdp_core:temp Temp.CustomModelData

# 武器に応じた移動速度低下付与

# サブ武器ありの場合：サブ武器消去
    clear @s ender_eye{MhdpWeaponSub:1b} 64

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 0.7

# 抜刀中タグ消去
    tag @s remove PlyWeaponDrawing
    tag @s remove PlyWeaponDrawingSub

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp
    
say 納刀
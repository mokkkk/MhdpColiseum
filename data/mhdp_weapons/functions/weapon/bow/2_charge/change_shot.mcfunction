#> mhdp_weapons:weapon/bow/2_charge/change_shot
#
# 弓：溜め → 射撃

# タグ消去
    tag @s remove WpnBowCharge

# 集中力が負の値の場合，0に戻す
    execute if entity @s[scores={MhdpWeaponExt=..-1}] run scoreboard players set @s MhdpWeaponExt 0

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/bow/default
# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp


# 行動開始
    function mhdp_weapons:weapon/bow/3_shot/start

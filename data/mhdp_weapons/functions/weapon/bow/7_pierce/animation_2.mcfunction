#> mhdp_weapons:weapon/bow/7_pierce/animation_2
#
# 弓：飛翔にらみ撃ち アイテムアニメーション

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 4
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/bow/while_animation

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp

#> mhdp_weapons:weapon/bow/0_charge/animation
#
# 弓：溜め アイテムアニメーション

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        scoreboard players operation #mhdp_temp_cmd MhdpCore += @s MhdpWeaponTimer
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    item modify entity @s weapon.mainhand mhdp_core:weapon/change_cmd

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp


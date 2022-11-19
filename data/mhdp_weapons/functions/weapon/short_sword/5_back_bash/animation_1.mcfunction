#> mhdp_weapons:weapon/short_sword/5_back_bash/animation_1
#
# 片手剣：盾攻撃２ アイテムアニメーション

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 9
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    # ダミー用データ
        execute store result storage mhdp_core:temp Temp.Dummy int 1 run scoreboard players get @s MhdpWeaponTimer
    item modify entity @s weapon.offhand mhdp_core:const/short_sword/while_animation

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp

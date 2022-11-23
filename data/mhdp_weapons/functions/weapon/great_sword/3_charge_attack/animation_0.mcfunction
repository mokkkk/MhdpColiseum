#> mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0
#
# 大剣：溜め斬り アイテムアニメーション

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 5
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/great_sword/while_animation

# 演出
    execute if entity @s[tag=!PlyJumpping] run playsound entity.hoglin.step master @a ~ ~ ~ 1 0.7

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp
    tag @s remove AttackHit
    tag @s remove HitStopNormal
    tag @s remove HitStopLong
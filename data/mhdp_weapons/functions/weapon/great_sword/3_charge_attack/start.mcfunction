#> mhdp_weapons:weapon/great_sword/3_charge_attack/start
#
# 大剣：溜め斬り開始
#

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordChargeAttack

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# 移動速度低下
    effect clear @s speed

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 3
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/great_sword/while_animation
# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp

# 溜め段階に応じた攻撃
    function mhdp_weapons:weapon/great_sword/3_charge_attack/attack

say 溜め斬り
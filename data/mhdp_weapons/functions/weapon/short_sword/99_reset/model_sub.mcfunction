#> mhdp_weapons:weapon/short_sword/99_reset/model_sub
#
# 片手剣のリセット処理 モデル・attributeリセット

# 武器ステータス変更
    # Cmd計算
        scoreboard players add #mhdp_temp_cmd MhdpCore 2
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    item modify entity @s weapon.offhand mhdp_core:const/short_sword/default

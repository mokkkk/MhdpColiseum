#> mhdp_core:player/item/carrot_on_a_stick/whetstone/sharpness
#
# アイテム用メイン処理 
# １０１：砥石

# 武器データ取得
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    execute store result score #mhdp_temp_sharp_color_current MhdpCore run data get storage mhdp_core:temp Temp.Status.SharpnessColor

# 武器の斬れ味取得
    execute if entity @s[tag=!SklHandicraftLv2] run data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMax
    execute if entity @s[tag=SklHandicraftLv2] run data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMaxCraft

# 色を計算
    execute store result score #mhdp_temp_sharp_current MhdpCore run data get storage mhdp_core:temp Temp.Status.SharpnessCurrent
    function mhdp_weapons:core/sharpness/calc
    execute store result storage mhdp_core:temp Temp.Status.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color MhdpCore

# 更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessCurrent
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessColor set from storage mhdp_core:temp Temp.Status.SharpnessColor
    item modify entity @s weapon.offhand mhdp_core:weapon/change_sharpness
    execute unless score #mhdp_temp_sharp_color_current MhdpCore = #mhdp_temp_sharp_color MhdpCore run tellraw @s {"text": "【武器の斬れ味が回復した！】"}

# 終了
    scoreboard players reset #mhdp_temp_sharp_color_current MhdpCore
    scoreboard players reset #mhdp_temp_sharp_color MhdpCore
    data remove storage mhdp_core:temp Temp
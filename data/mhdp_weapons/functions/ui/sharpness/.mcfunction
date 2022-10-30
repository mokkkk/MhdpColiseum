#> mhdp_weapons:ui/sharpness/
#
# UI表示処理等 斬れ味関連
#

# 斬れ味色取得
    execute store result score #mhdp_temp_sharpness MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessColor

# UI設定
    execute if entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Sharpness set value '[{"text":"\\uF888\\uF888\\uF888\\uF888\\uF888\\uF888\\uF802","font":"default"}]'
    execute unless entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Sharpness set value '["",{"score":{"name":"#mhdp_temp_sharpness","objective":"MhdpCore"},"font":"mhdp_sharpness"}]'

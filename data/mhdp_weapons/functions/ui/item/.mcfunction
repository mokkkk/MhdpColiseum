#> mhdp_weapons:ui/item/
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# UI設定
    execute if entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Item set value '[{"text":"\\uF889\\uF802","font":"default"}]'
    execute unless entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Item set value '["",{"text":"#","font":"items/test"}]'

# data modify storage mhdp_core:temp Temp.UI.Item set value '["",{"text":"#","font":"items/test"}]'
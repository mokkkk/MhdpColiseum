#> mhdp_weapons:ui/ex/
#
# UI表示処理等 武器ごとの特殊ゲージ
#

# UI設定
    execute if entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Ex set value '[{"text":"\\uF888\\uF888\\uF888\\uF888\\uF888\\uF888\\uF802","font":"default"}]'
    execute unless entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Ex set value '["",{"text":"#","font":"ex/test"}]'

# data modify storage mhdp_core:temp Temp.UI.Ex set value '["",{"text":"#","font":"ex/test"}]'
#> mhdp_weapons:ui/item/
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# UI設定
    # execute if entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Item set value '[{"text":"\\uF889\\uF802","font":"default"}]'
    # execute unless entity @s[tag=PlyWpnBow] run data modify storage mhdp_core:temp Temp.UI.Item set value '["",{"text":"#","font":"items/test"}]'

# 仮設定（空白）
    data modify storage mhdp_core:temp Temp.UI.Item0 set value '[{"text":"\\uF889\\uF802","font":"default"}]'
    data modify storage mhdp_core:temp Temp.UI.Item1 set value '[{"text":"\\uF889\\uF802","font":"default"}]'

# 不動の装衣
    execute if entity @s[tag=PlyItmImmovable] run function mhdp_weapons:ui/item/immovable/
# 翔蟲
    execute if entity @s[tag=PlyItmWirebug] run function mhdp_weapons:ui/item/wirebug/

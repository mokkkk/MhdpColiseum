#> mhdp_weapons:ui/item/wirebug/normal
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# UI設定
    execute if entity @s[scores={MhdpSpItemId0=2}] run data modify storage mhdp_core:temp Temp.UI.Item0 set value '["",{"text":"#","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpSpItemId1=2}] run data modify storage mhdp_core:temp Temp.UI.Item1 set value '["",{"text":"#","font":"items/wirebug"}]'

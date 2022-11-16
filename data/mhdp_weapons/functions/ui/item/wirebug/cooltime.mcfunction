#> mhdp_weapons:ui/item/wirebug/cooltime
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# 値取得
    execute if entity @s[scores={MhdpTItmWirebugCooltime=353..}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"0","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=309..352}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"1","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=265..308}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"2","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=221..264}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"3","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=177..220}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"4","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=133..176}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"5","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=89..132}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"6","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=45..88}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"7","font":"items/wirebug"}]'
    execute if entity @s[scores={MhdpTItmWirebugCooltime=..44}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"8","font":"items/wirebug"}]'

# UI設定
    execute if entity @s[scores={MhdpSpItemId0=2}] run data modify storage mhdp_core:temp Temp.UI.Item0 set from storage mhdp_core:temp Temp.UI.ItemGauge
    execute if entity @s[scores={MhdpSpItemId1=2}] run data modify storage mhdp_core:temp Temp.UI.Item1 set from storage mhdp_core:temp Temp.UI.ItemGauge

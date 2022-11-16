#> mhdp_weapons:ui/item/immovable/cooltime
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# 値取得
    execute if entity @s[scores={MhdpTItmImmovableCooltime=3201..}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"0","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=2801..3200}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"1","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=2401..2800}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"2","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=2001..2400}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"3","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=1601..2000}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"4","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=1201..1600}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"5","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=801..1200}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"6","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=401..800}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"7","font":"items/immovable"}]'
    execute if entity @s[scores={MhdpTItmImmovableCooltime=..400}] run data modify storage mhdp_core:temp Temp.UI.ItemGauge set value '["",{"text":"8","font":"items/immovable"}]'

# UI設定
    execute if entity @s[scores={MhdpSpItemId0=1}] run data modify storage mhdp_core:temp Temp.UI.Item0 set from storage mhdp_core:temp Temp.UI.ItemGauge
    execute if entity @s[scores={MhdpSpItemId1=1}] run data modify storage mhdp_core:temp Temp.UI.Item1 set from storage mhdp_core:temp Temp.UI.ItemGauge

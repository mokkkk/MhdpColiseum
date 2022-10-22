#> mhdp_weapons:ui/stamina/append
#
# UI表示処理等 スタミナ関連 再起処理
#

# 値を入れる
    execute if score #mhdp_temp_stamina MhdpStamina matches ..0 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"0","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 1..12 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"1","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 13..24 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"2","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 25..36 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"3","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 37..48 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"4","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 49..60 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"5","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 61..72 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"6","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 73..84 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"7","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 85..96 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"8","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 97..108 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"9","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 109.. run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"#","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'

#> mhdp_weapons:ui/stamina/append
#
# UI表示処理等 スタミナ関連 再起処理
#

# 値を入れる
    execute if score #mhdp_temp_stamina MhdpStamina matches ..0 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"0","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 1..9 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"1","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 10..19 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"2","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 20..29 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"3","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 30..39 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"4","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 40..49 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"5","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 50..59 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"6","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 60..69 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"7","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 70..79 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"8","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 80..89 run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"9","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'
    execute if score #mhdp_temp_stamina MhdpStamina matches 90.. run data modify storage mhdp_core:temp Temp.UI.StaminaArray append value '[{"text":"#","font":"mhdp_stamina"},{"text": "\\uF801","font": "default"}]'

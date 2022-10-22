#> mhdp_weapons:ui/stamina/
#
# UI表示処理等 スタミナ関連
#
#declare tag PlyStaminaPenalty プレイヤーがスタミナを使い切った
#declare tag PlyStaminaNotRegen このティックはスタミナが回復しない

# スタミナ関連
# スタミナを使い切ったとき，ペナルティ開始
    execute if entity @s[tag=!PlyStaminaPenalty,scores={MhdpStamina=..-1}] run function mhdp_weapons:ui/stamina/penalty
# スタミナが負の値の場合，0に戻す
    execute if entity @s[scores={MhdpStamina=..-1}] run scoreboard players set @s MhdpStamina 0

# ペナルティ中回復を封じる
    execute if entity @s[tag=PlyStaminaPenalty] run tag @s add PlyStaminaNotRegen
    execute if entity @s[tag=PlyStaminaPenalty] run scoreboard players remove @s MhdpTStaminaPenalty 1
    execute if entity @s[tag=PlyStaminaPenalty,scores={MhdpTStaminaPenalty=..0}] run tag @s remove PlyStaminaPenalty

# UI設定
    scoreboard players set #mhdp_const_125 MhdpCore 125
    scoreboard players operation #mhdp_temp_stamina MhdpStamina = @s MhdpStamina
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore
    function mhdp_weapons:ui/stamina/append
    scoreboard players operation #mhdp_temp_stamina MhdpStamina -= #mhdp_const_125 MhdpCore

    data modify storage mhdp_core:temp Temp.UI.Stamina set value '[{"interpret":true,"nbt":"Temp.UI.StaminaArray[0]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[1]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[2]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[3]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[4]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[5]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[6]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[7]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[8]","storage":"mhdp_core:temp"},{"interpret":true,"nbt":"Temp.UI.StaminaArray[9]","storage":"mhdp_core:temp"}]'

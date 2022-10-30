#> mhdp_weapons:core/attack/sharpness/
#
# 攻撃時処理 切れ味更新

# 切れ味取得
    execute store result score #mhdp_temp_sharp_current MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessCurrent
    scoreboard players set #mhdp_temp_sharp_sum MhdpCore 0

# 切れ味更新有無確認    
    # スキル：
        # ...

# 切れ味更新
    execute unless entity @s[tag=KeepSharpness] if score #mhdp_temp_sharp_current MhdpCore matches 1.. run scoreboard players remove #mhdp_temp_sharp_current MhdpCore 1
    tag @s remove KeepSharpness

# 色決定
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/0
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/1
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/2
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/3
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/4
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/5
    execute unless entity @s[tag=MhdpSharpEnd] run function mhdp_weapons:core/attack/sharpness/6
    execute unless entity @s[tag=MhdpSharpEnd] run scoreboard players set #mhdp_temp_sharp_color MhdpCore 6

# 通知
    execute store result score #mhdp_temp_sharp_color_current MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessColor
    execute unless score #mhdp_temp_sharp_color MhdpCore = #mhdp_temp_sharp_color_current MhdpCore run function mhdp_weapons:core/attack/sharpness/toast

# 更新
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessCurrent int 1 run scoreboard players get #mhdp_temp_sharp_current MhdpCore
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color MhdpCore
    item modify entity @s weapon.mainhand mhdp_core:weapon/change_sharpness

# 終了
    tag @s remove MhdpSharpEnd
    scoreboard players reset #mhdp_temp_sharp
    scoreboard players reset #mhdp_temp_sharp_current
    scoreboard players reset #mhdp_temp_sharp_sum
    scoreboard players reset #mhdp_temp_sharp_max

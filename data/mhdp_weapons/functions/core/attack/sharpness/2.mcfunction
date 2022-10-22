
# 色決定
    execute store result score #mhdp_temp_sharp MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.Sharpness[2]
    scoreboard players operation #mhdp_temp_sharp_sum MhdpCore += #mhdp_temp_sharp MhdpCore
    execute if score #mhdp_temp_sharp_current MhdpCore <= #mhdp_temp_sharp_sum MhdpCore run tag @s add MhdpSharpEnd
    execute if entity @s[tag=MhdpSharpEnd] run scoreboard players set #mhdp_temp_sharp_color MhdpCore 2

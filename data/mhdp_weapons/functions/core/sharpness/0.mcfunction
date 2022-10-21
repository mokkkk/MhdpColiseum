#> mhdp_weapons:core/sharpness/0
#
# 切れ味色決定

# 色決定
    execute store result score #mhdp_temp_sharp MhdpCore run data get storage mhdp_core:temp Temp.Status.Sharpness[0]
    scoreboard players operation #mhdp_temp_sharp_sum MhdpCore += #mhdp_temp_sharp MhdpCore
    execute if score #mhdp_temp_sharp_current MhdpCore <= #mhdp_temp_sharp_sum MhdpCore run tag @s add Decided
    execute if entity @s[tag=Decided] run scoreboard players set #mhdp_temp_sharp_color MhdpCore 0

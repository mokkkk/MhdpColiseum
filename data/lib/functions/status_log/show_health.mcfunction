#> lib:status_log/show_health
#
#
#
# @within function
#   lib:damage/core/health_subtract/non-player
#   lib:heal/core/non-player
#   lib:score_to_health_wrapper/fluctuation
#   player_manager:vanilla_attack/show_log

#> For Init
# @private
    #declare score_holder $Fluctuation
    #declare tag LogAECInit
    #declare score_holder $isNegative
    #declare tag SummonPosStand

# 少数部を取り出す
    scoreboard players operation $Frac Temporary = $Fluctuation Lib
    scoreboard players operation $Frac Temporary /= $10 Const
    scoreboard players operation $Frac Temporary %= $10 Const
# 値は100倍されたもの
    scoreboard players operation $Int Temporary = $Fluctuation Lib
    scoreboard players operation $Int Temporary /= $100 Const

# 設置位置用AEC
    execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~-1 ~ {Marker:1b,Silent:1b,Small:1b,Invisible:1b,Tags:["SummonPosStand"]}
# 描画用AEC
    execute anchored eyes positioned ^ ^ ^ at @e[type=armor_stand,tag=SummonPosStand,distance=..1.5,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["LogAEC", "LogAECInit","Object"],CustomName:'""',CustomNameVisible:1b}
# 表示文字列生成
    execute if score $Color Temporary matches 0 run loot replace block 0 0 0 container.0 loot lib:status_log/normal
    execute if score $Color Temporary matches 1 run loot replace block 0 0 0 container.0 loot lib:status_log/weak
# 文字列描画
    execute anchored eyes positioned ^ ^ ^ run data modify entity @e[type=armor_stand,tag=LogAECInit,distance=..1.5,limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
# タグ削除
    execute anchored eyes positioned ^ ^ ^ run tag @e[type=armor_stand,tag=LogAECInit,distance=..1.5,limit=1] remove LogAECInit
# リセット
    execute anchored eyes positioned ^ ^ ^ run kill @e[type=armor_stand,tag=SummonPosStand,distance=..1.5,limit=1]
    scoreboard players reset $Fluctuation Lib
    scoreboard players reset $Frac Temporary
    scoreboard players reset $Int Temporary
    scoreboard players reset $isNegative Temporary
#> mhdp_weapons:tick/
#
# 毎tick実行される処理
#
# @within tag/function minecraft:tick

# 各Player用処理
    # function mhdp_weapons:player/

# 抜刀

# 納刀

# 強制納刀

# エンダーアイ使用
    execute if entity @s[tag=PlyUsingEyeStart] run say エンダーアイ使用開始
    execute if entity @s[tag=PlyUsingEyeEnd] run say エンダーアイ使用終了

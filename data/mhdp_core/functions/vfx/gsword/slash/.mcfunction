#> mhdp_core:vfx/gsword/slash/
#
# 大剣 汎用斬りエフェクト表示 tick処理

# タイマー増加
    scoreboard players add @s MhdpCore 1

# モデル変更
    execute if score @s MhdpCore matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1000
    execute if score @s MhdpCore matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1001
    execute if score @s MhdpCore matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1002
    execute if score @s MhdpCore matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1003
    execute if score @s MhdpCore matches 5 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1004
    execute if score @s MhdpCore matches 6 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1005
    execute if score @s MhdpCore matches 7 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1006

# 終了
    execute if score @s MhdpCore matches 7.. run kill @s

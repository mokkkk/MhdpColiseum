#> mhdp_core:player/sneak/
#
# プレイヤースニーク検知用に実行する処理

# 状態変化検知
    # 立ち→スニーク
        execute if predicate mhdp_core:player/stat/sneak if entity @s[tag=!PlySneakCurrent] run tag @s add PlySneakStart
        execute if entity @s[tag=PlySneakStart] run tag @s add PlySneakCurrent
    # スニーク→立ち
        execute if entity @s[tag=PlySneakCurrent] unless predicate mhdp_core:player/stat/sneak run tag @s add PlySneakEnd
        execute if entity @s[tag=PlySneakEnd] run tag @s remove PlySneakEnd

#> mhdp_core:player/item/food/might_seed/timer
#
# ５１：怪力の種 タイマー処理

# タイマー減算
    scoreboard players remove @s MhdpItmTMightSeed 1

# タグ消去
    execute if entity @s[scores={MhdpItmTMightSeed=..0}] run tellraw @s {"text": "【怪力の種の効果が切れた】"}
    execute if entity @s[scores={MhdpItmTMightSeed=..0}] run tag @s remove ItmMightSeed

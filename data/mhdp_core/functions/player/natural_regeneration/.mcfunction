#> mhdp_core:player/natural_regeneration/
#
# 自然回復

# ダメージインターバル増加
    execute unless entity @s[scores={MhdpTDamageInterval=200..}] run scoreboard players add @s MhdpTDamageInterval 1

# 一定時間ごとに回復
    execute if entity @s[scores={MhdpTDamageInterval=200..}] run function mhdp_core:player/natural_regeneration/regeneration

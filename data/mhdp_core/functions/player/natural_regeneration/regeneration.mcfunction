#> mhdp_core:player/natural_regeneration/regeneration
#
# 自然回復

# 回復タイマー増加
    execute unless entity @s[scores={MhdpTRegeneration=100..}] run scoreboard players add @s MhdpTRegeneration 1

# 回復
    execute if entity @s[scores={MhdpTRegeneration=100..}] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:10,Amplifier:5b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpTRegeneration=100..}] run scoreboard players set @s MhdpTRegeneration 0

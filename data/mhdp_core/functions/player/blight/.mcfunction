#> mhdp_core:player/blight/
#
# 属性やられ処理分岐
#declare tag BltFire 火属性やられ

# 火属性やられ
    execute if entity @s[tag=!BltFire,scores={MhdpBlightFire=1..}] run function mhdp_core:player/blight/fire/start
    execute if entity @s[tag=BltFire] run particle flame ~ ~1 ~ 0.5 0.8 0.5 0.05 1
    execute if entity @s[tag=BltFire] run scoreboard players remove @s MhdpBlightFire 1
    execute if entity @s[tag=BltFire,scores={MhdpBlightFire=..0}] run function mhdp_core:player/blight/fire/end

#> mhdp_core:player/blight/
#
# 属性やられ処理分岐
#declare tag BltFire 火属性やられ

# 火属性やられ
    execute if entity @s[tag=!BltFire,scores={MhdpBlightFire=1..}] run function mhdp_core:player/blight/fire/start
    execute if entity @s[tag=BltFire] run function mhdp_core:player/blight/fire/while

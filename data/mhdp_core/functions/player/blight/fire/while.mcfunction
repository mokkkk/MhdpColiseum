#> mhdp_core:player/blight/fire/while
#
# 属性やられ処理 火属性やられ中

# particle表示
    particle flame ~ ~1 ~ 0.5 0.8 0.5 0.05 1

# スコア減算
    scoreboard players remove @s MhdpBlightFire 1

# 時間切れ時，終了
    execute if entity @s[scores={MhdpBlightFire=..0}] run function mhdp_core:player/blight/fire/end

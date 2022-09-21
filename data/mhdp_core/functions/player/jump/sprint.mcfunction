#> mhdp_core:player/jump/sprint
#
# プレイヤーダッシュジャンプ時に実行する処理


# 無敵時間設定
    scoreboard players set @s MhdpTAvoid 5

# スキル処理
    # 回避本能
        execute if entity @s[tag=CharmNarga,scores={MhdpHealth=..6}] run scoreboard players set @s MhdpTAvoid 7

# 属性やられ処理
    # 火属性やられ
        execute if entity @s[tag=BlightFire] run scoreboard players remove @s MhdpBlightFire 100

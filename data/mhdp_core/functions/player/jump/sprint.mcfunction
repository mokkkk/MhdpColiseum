#> mhdp_core:player/jump/sprint
#
# プレイヤーダッシュジャンプ時に実行する処理

# スタミナ消費
    execute if entity @s[tag=!SklConstitutionLv1,tag=!SklConstitutionLv2] run scoreboard players remove @s MhdpStamina 50
    # スキル：体術
        execute if entity @s[tag=SklConstitutionLv1] run scoreboard players remove @s MhdpStamina 45
        execute if entity @s[tag=SklConstitutionLv2] run scoreboard players remove @s MhdpStamina 40

# 無敵時間設定
    scoreboard players set @s MhdpTAvoid 5

# スキル処理
    # 回避本能
        execute if entity @s[tag=CharmNarga,scores={MhdpHealth=..6}] run scoreboard players set @s MhdpTAvoid 7

# 属性やられ処理
    # 火属性やられ
        execute if entity @s[tag=BltFire] run scoreboard players remove @s MhdpBlightFire 160

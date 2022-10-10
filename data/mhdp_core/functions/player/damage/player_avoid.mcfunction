#> mhdp_core:player/damage/player_avoid
#
# プレイヤーフレーム回避成功時

# 演出
    playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2

# 無敵時間設定
    scoreboard players set @s MhdpTDamage 5

# 各処理への分岐
    # 弓・チャージステップ

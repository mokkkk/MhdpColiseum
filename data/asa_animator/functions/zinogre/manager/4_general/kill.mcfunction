#> asa_animator:zinogre/manager/4_general/kill
#
# 雷狼竜 消去処理

# タグ消去
    tag @e[tag=ZinogreTarget] remove ZinogreTarget
    tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget

# marker消去
    # kill @e[type=marker,tag=ZinogreBreathTarget]
    # kill @e[type=marker,tag=ZinogreChargeFPos]
    # kill @e[type=marker,tag=ZinogreChargeTarget]
    # kill @e[type=marker,tag=ZinogreChargeAttack]

# パーティクル
    execute at @e[type=armor_stand,tag=ZinogreParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# 当たり判定削除
    function asa_animator:zinogre/manager/4_general/kill_health

# ボスバー削除
    bossbar remove asa_animator:zinogre_health

# パーツ削除
    function asa_animator:zinogre/kill

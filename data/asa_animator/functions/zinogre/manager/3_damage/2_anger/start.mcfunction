#> asa_animator:zinogre/manager/3_damage/2_anger/start
#
# 雷狼竜 怒り開始処理

# 怒り行動回数初期化
    scoreboard players set #mhdp_zinogre_anger_count AsaMatrix 0

# タグ付与
    tag @s add IsAnger

# ボスバー設定
    bossbar set asa_animator:zinogre_health name [{"text": "雷狼竜"},{"text":"\uE001","font":"mhdp"}]

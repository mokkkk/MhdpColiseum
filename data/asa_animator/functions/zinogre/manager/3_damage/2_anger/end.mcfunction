#> asa_animator:zinogre/manager/3_damage/2_anger/end
#
# 雷狼竜 怒り終了処理

# 怒り終了
    tag @s remove IsAnger

# スコアリセット
    scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_anger_damage_max AsaMatrix

# ボスバー設定
    bossbar set asa_animator:zinogre_health name [{"text": "雷狼竜"},{"text":"\uE000","font":"mhdp"}]

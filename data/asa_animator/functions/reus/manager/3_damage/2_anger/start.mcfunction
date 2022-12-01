#> asa_animator:reus/manager/3_damage/2_anger/start
#
# 火竜 怒り開始処理

# 怒り行動回数初期化
    scoreboard players set #mhdp_reus_anger_count AsaMatrix 0

# タグ付与
    tag @s add IsAnger

# ボスバー設定
    bossbar set asa_animator:reus_health name [{"text": "火竜"},{"text":"\uE001","font":"mhdp"}]

# 雌火竜との怒り共有
    # execute if entity @e[type=armor_stand,tag=ReiaRoot,tag=!IsAnger] as @e[type=armor_stand,tag=ReiaRoot,tag=!IsAnger] run function asa_animator:reia/manager/start_anger

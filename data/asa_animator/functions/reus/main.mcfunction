#> asa_animator:reus/main
#
# 火竜メイン処理

# 地面埋まり対策
    execute unless block ~ ~ ~ #asa_animator:no_collision unless block ~ ~1 ~ #asa_animator:no_collision unless block ~ ~2 ~ #asa_animator:no_collision unless block ~ ~3 ~ #asa_animator:no_collision at @s run function asa_animator:general/back

# アニメーション遷移
    execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/1_change/

# アニメーション
    # 待機
        execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/anim/stay/main
    # 飛行待機
        execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] at @s run function asa_animator:reus/anim/flying_stay/main
    # 地上軸合わせ
        execute unless predicate asa_animator:reus/stay if entity @s[tag=!IsFlying,tag=AnmTurnL] at @s run function asa_animator:reus/anim/turn_l/main
        execute unless predicate asa_animator:reus/stay if entity @s[tag=!IsFlying,tag=AnmTurnR] at @s run function asa_animator:reus/anim/turn_r/main
    # 飛行軸合わせ
        execute unless predicate asa_animator:reus/stay if entity @s[tag=IsFlying,tag=IsTurn] at @s run function asa_animator:reus/anim/flying_turn/main
    # 行動
        execute unless predicate asa_animator:reus/stay unless entity @s[tag=IsTurn] at @s run function asa_animator:reus/anim/main

# 当たり判定位置
    execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/manager/2_health/

# 怒り時パーティクル
    execute if entity @s[tag=IsAnger] at @e[type=armor_stand,tag=ReusParts,tag=HeadU] run particle smoke ^ ^1.3 ^0.7 0.3 0.3 0.3 0.01 1

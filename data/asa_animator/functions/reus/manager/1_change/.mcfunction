#> asa_animator:reus/manager/1_change/
#
# 火竜 アニメーション遷移処理

# アニメーションタイマーリセット
    scoreboard players set @s AsaMatrix 0

# 行動回数増加
    scoreboard players add #mhdp_reus_actcount_phase AsaMatrix 1

# ターゲットリセット
    function asa_animator:reus/manager/1_change/target

# 強制
    tag @s add AnmFBite
    # function asa_animator:reus/manager/1_change/1_animations/breath

# 行動
    # execute if entity @a[tag=ReusAttackTarget] run function asa_animator:reus/manager/1_change/act

# 軸合わせ
    execute unless predicate asa_animator:reus/turn run function asa_animator:reus/manager/1_change/1_animations/turn

# 怒り終了
    execute if entity @s[tag=IsAnger] unless entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 1
    execute if entity @s[tag=IsAnger] if entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 2
    execute if entity @s[tag=IsAnger] if score #mhdp_reus_anger_count AsaMatrix matches 30.. run function asa_animator:reus/manager/end_anger

# 終了
    tag @s remove ChangeAnm

#> asa_animator:zinogre/manager/1_change/
#
# 雷狼竜 アニメーション遷移処理

# アニメーションタイマーリセット
    scoreboard players set @s AsaMatrix 0

# 行動回数増加
    scoreboard players add #mhdp_zinogre_actcount_phase AsaMatrix 1

# ターゲットリセット
    function asa_animator:zinogre/manager/1_change/target

# 強制
    tag @s add AnmJump
    # function asa_animator:zinogre/manager/1_change/1_animations/sault

# 行動
    # execute if entity @a[tag=ZinogreAttackTarget] run function asa_animator:zinogre/manager/1_change/act

# 軸合わせ
    execute unless predicate asa_animator:zinogre/turn run function asa_animator:zinogre/manager/1_change/1_animations/turn

# 怒り終了
    # execute if entity @s[tag=IsAnger] unless entity @a[tag=ZinogreAttackTarget] run scoreboard players add #mhdp_zinogre_anger_count AsaMatrix 1
    # execute if entity @s[tag=IsAnger] if entity @a[tag=ZinogreAttackTarget] run scoreboard players add #mhdp_zinogre_anger_count AsaMatrix 2
    # execute if entity @s[tag=IsAnger] if score #mhdp_zinogre_anger_count AsaMatrix matches 30.. run function asa_animator:zinogre/manager/3_damage/2_anger/end

# 終了
    tag @s remove ChangeAnm

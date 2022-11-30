
# アニメーションタイマーリセット
scoreboard players set @s AsaMatrix 0

# 行動回数増加
scoreboard players add #mhdp_reus_actcount_phase AsaMatrix 1

# ターゲット関連
function asa_animator:reus/manager/change_target

# 行動
# execute if entity @a[tag=ReusTarget] run function asa_animator:reus/manager/change_act

# 軸合わせ
# execute unless predicate asa_animator:reus/turn run function asa_animator:reus/manager/change_normal/_/turn_b

# 怒り終了
execute if entity @s[tag=IsAnger] if score #mhdp_reus_anger_count AsaMatrix matches 15.. run function asa_animator:reus/manager/end_anger

# 強制
tag @s add AnmTailR

# 終了
tag @s remove ChangeAnm

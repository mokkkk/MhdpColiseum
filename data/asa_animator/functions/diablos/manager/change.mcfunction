
# アニメーションタイマーリセット
scoreboard players set @s AsaMatrix 0

# ターゲット関連
function asa_animator:diablos/manager/change_target

# 行動
execute if entity @a[tag=DiablosTarget] run function asa_animator:diablos/manager/change_act

# 軸合わせ
execute unless predicate asa_animator:diablos/turn run function asa_animator:diablos/manager/change_normal/_/turn_b

# 怒り終了
execute if entity @s[tag=IsAnger] if score #mhdp_diablos_anger_count AsaMatrix matches 15.. run function asa_animator:diablos/manager/end_anger

# 終了
tag @s remove ChangeAnm

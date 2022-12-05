#> asa_animator:reus/anim/breath/events/move
#
# 火竜 ブレス処理 移動

# 移動
    tp @s ^ ^ ^0.8 ~ ~0.1

# ヒット判定
    execute positioned ~ ~1.45 ~ positioned ^ ^ ^0.8 if entity @e[tag=ReusTarget,distance=..2.8] run tag @e[tag=ReusTarget,distance=..2.8] add Target
    # 回避中のプレイヤーでは起爆しない
        execute as @a[tag=Target] if score @s MhdpTAvoid matches 1.. run function mhdp_core:player/damage/player_avoid
        execute as @a[tag=Target] if score @s MhdpTDamage matches 1.. run tag @s remove Target
    execute if entity @e[tag=Target] run function asa_animator:reus/anim/breath/events/damage

# 地面の中に埋まったとき，消去
    execute positioned ~ ~1.45 ~ unless block ^ ^ ^0.8 #mhdp_core:no_collision run function asa_animator:reus/anim/breath/events/damage

# particle表示
    execute at @s run particle flame ~ ~1.45 ~ 0.3 0.3 0.3 0 5 force
    execute at @s run particle lava ~ ~1.45 ~ 0.3 0.3 0.3 0 1

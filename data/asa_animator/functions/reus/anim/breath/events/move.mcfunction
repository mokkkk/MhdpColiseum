#> asa_animator:reus/anim/breath/events/move
#
# 火竜 ブレス処理 移動

# 移動
    tp @s ^ ^ ^1 ~ ~0.1

# ヒット判定
    execute positioned ~ ~1.45 ~ positioned ^ ^ ^0.7 if entity @e[tag=ReusTarget,distance=..2.5] run function asa_animator:reus/anim/breath/events/damage

# 地面の中に埋まったとき，消去
    execute positioned ~ ~1.45 ~ unless block ^ ^ ^0.7 #mhdp_core:no_collision run function asa_animator:reus/anim/breath/events/damage

# particle表示
    particle flame ~ ~1.45 ~ 0.3 0.3 0.3 0 5 force
    particle lava ~ ~1.45 ~ 0.3 0.3 0.3 0 1

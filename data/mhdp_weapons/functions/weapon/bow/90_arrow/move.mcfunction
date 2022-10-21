#> mhdp_weapons:weapon/bow/90_arrow/move
#
# 放たれた矢の処理 移動
#

# 移動
    tp @s ^ ^ ^1 ~ ~0.1

# ヒット判定
    execute positioned ^ ^ ^1 if entity @e[type=slime,tag=MonsterParts,distance=..2.5] run function mhdp_weapons:weapon/bow/90_arrow/attack

# 地面の中に埋まったとき，消去
    execute unless block ^ ^ ^1 #mhdp_core:no_collision run kill @s

# particle表示
    particle crit ~ ~ ~ 0 0 0 0 1 force
    execute if entity @s[scores={MhdpCore=2..6}] run particle enchanted_hit ~ ~ ~ 0 0 0 0.3 1

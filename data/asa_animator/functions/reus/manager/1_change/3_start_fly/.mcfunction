#> asa_animator:reus/manager/1_change/3_start_fly/
#
# 火竜 地上 → 飛行 切り替え

# ターゲットが近距離にいる場合，一定確率でBjb
    execute if entity @e[tag=ReusAttackTarget,distance=..10] if predicate asa_animator:random/050 run tag @s add AnmBjb

# それ以外の場合，普通に飛ぶ
    execute if predicate asa_animator:reus/stay run tag @s add AnmFly

# 終了
    scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0

#> asa_animator:reus/manager/3_damage/0_animation/anger
#
# 火竜 怒り開始

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    execute unless entity @s[tag=IsFlying] run tag @s add AnmAnger
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyAnger

# 怒り開始処理
    function asa_animator:reus/manager/3_damage/2_anger/start

# スコアリセット
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix

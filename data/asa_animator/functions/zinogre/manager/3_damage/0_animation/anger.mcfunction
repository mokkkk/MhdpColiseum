#> asa_animator:zinogre/manager/3_damage/0_animation/anger
#
# 雷狼竜 怒り開始

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:zinogre/manager/4_general/remove_animation_tag
    tag @s add AnmFAnger

# 怒り開始処理
    function asa_animator:zinogre/manager/3_damage/2_anger/start

# スコアリセット
    scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_anger_damage_max AsaMatrix

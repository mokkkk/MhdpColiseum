#> asa_animator:reus/manager/3_damage/0_animation/damage_body
#
# 火竜 怯み処理 胴体

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    execute if entity @s[tag=!IsFlying] run tag @s add AnmDBody
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    tag @s remove IsFlying

# 部位破壊処理
    execute if entity @s[tag=!DestroyBody] run function asa_animator:reus/manager/3_damage/1_destroy/body

# スコアリセット
    scoreboard players operation #mhdp_reus_body_damage AsaMatrix = #mhdp_reus_body_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5

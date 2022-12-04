#> asa_animator:reus/manager/3_damage/0_animation/damage_leg
#
# 火竜 怯み処理 脚

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    execute if entity @s[tag=!IsFlying] run function asa_animator:reus/manager/1_change/1_animations/damage_leg
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    tag @s remove IsFlying

# スコアリセット
    scoreboard players operation #mhdp_reus_leg_damage AsaMatrix = #mhdp_reus_leg_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5

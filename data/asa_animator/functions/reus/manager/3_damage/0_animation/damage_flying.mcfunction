#> asa_animator:reus/manager/3_damage/0_animation/damage_flying
#
# 火竜 怯み処理 頭

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    tag @s remove IsFlying
    tag @s add AnmFlyDamage

# スコアリセット
    scoreboard players operation #mhdp_reus_flying_damage AsaMatrix = #mhdp_reus_flying_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5

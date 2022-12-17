#> asa_animator:reus/manager/3_damage/0_animation/damage_stun
#
# 火竜 怯み処理 スタン

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    execute unless entity @s[tag=IsFlying] run tag @s add AnmDStun
    execute if entity @s[tag=IsFlying] run tag @s add AnmFStun
    tag @s remove IsFlying

# 耐性増加
    scoreboard players set #mhdp_const_temp AsaMatrix 150
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
    scoreboard players reset #mhdp_const_temp AsaMatrix

# スコアリセット
    scoreboard players operation #mhdp_reus_stun_damage AsaMatrix = #mhdp_reus_stun_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5

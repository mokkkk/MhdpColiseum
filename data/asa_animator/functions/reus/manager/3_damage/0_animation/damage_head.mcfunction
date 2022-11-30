#> asa_animator:reus/manager/3_damage/0_animation/damage_head
#
# 火竜 怯み処理 頭

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function asa_animator:reus/manager/4_general/remove_animation_tag
    execute unless entity @s[tag=IsFlying] run tag @s add AnmDHead
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage

# 部位破壊処理
    execute if entity @s[tag=!DestroyHead] run function asa_animator:reus/manager/3_damage/1_destroy/head

# スコアリセット
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix = #mhdp_reus_head_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5

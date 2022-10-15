#> mhdp_core:player/damage/knockback/wind/2_
#
# プレイヤーノックバック開始処理

# ノックバック位置保存
    execute if entity @e[type=marker,tag=MhdpKnockbackPos] run tp @e[type=marker,tag=MhdpKnockbackPos] ~ ~ ~
    execute unless entity @e[type=marker,tag=MhdpKnockbackPos] run summon marker ~ ~ ~ {Tags:["MhdpKnockbackPos"]}

# 浮遊エフェクト付与
    execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:20b,Duration:4,ShowParticles:0b}]}

# ノックバック中タグ・スコア付与
    tag @s add MdhpKnockback
    tag @s add MdhpKnockbackDW
    scoreboard players set @s MhdpTKnockback 3

# 武器の行動中断処理
    function mhdp_weapons:core/interruption/

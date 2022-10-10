#> mhdp_core:player/damage/poison/
#
# 毒を受けた際の処理

# 毒エフェクト付与
    execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["AecPoison"],Duration:6,Age:4,Effects:[{Id:19,Amplifier:0b,Duration:200,ShowParticles:1b}]}
# データ更新
    data modify storage mhdp_core:temp Temp.Effects set from entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects[0]
    execute store result storage mhdp_core:temp Temp.Effects.Duration int 1 run scoreboard players get #mhdp_temp_poison_time MhdpCore
    execute store result storage mhdp_core:temp Temp.Effects.Aplifier byte 1 run scoreboard players get #mhdp_temp_poison_lv MhdpCore
    tag @e[type=area_effect_cloud,tag=AecPoison] remove AecPoison

say 毒を受けた in mhdp_core:player/damage/poison/
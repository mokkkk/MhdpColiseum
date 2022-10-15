#> mhdp_core:player/damage/voice/
#
# 咆哮を受けた際の処理


# スキル確認
    execute if entity @s[tag=SklEarplugsLv1] run scoreboard players set #mhdp_temp_voice_res MhdpCore 1
    execute if entity @s[tag=SklEarplugsLv2] run scoreboard players set #mhdp_temp_voice_res MhdpCore 2

# フレーム回避確認
    execute if entity @s[scores={MhdpTAvoid=1..}] run scoreboard players set #mhdp_temp_voice_res MhdpCore 3
    execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players set #mhdp_temp_voice_res MhdpCore 3

# 速度低下エフェクト付与
    execute if score #mhdp_temp_voice_lv MhdpCore > #mhdp_temp_voice_res MhdpCore at @s run summon area_effect_cloud ~ ~ ~ {Tags:["AecPoison"],Duration:6,Age:4,Effects:[{Id:2,Amplifier:10b,Duration:200,ShowParticles:1b}]}
# データ更新
    data modify storage mhdp_core:temp Temp.Effects set from entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects[0]
    execute store result storage mhdp_core:temp Temp.Effects.Duration int 1 run scoreboard players get #mhdp_temp_voice_time MhdpCore
    data modify entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects[0].Duration set from storage mhdp_core:temp Temp.Effects.Duration
    tag @e[type=area_effect_cloud,tag=AecPoison] remove AecPoison

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_voice_lv

#> mhdp_core:player/damage/voice/
#
# 咆哮を受けた際の処理

# 初期化
    scoreboard players set #mhdp_temp_voice_res MhdpCore 0

# スキル確認
    execute if entity @s[tag=SklEarplugsLv1] run scoreboard players set #mhdp_temp_voice_res MhdpCore 1
    execute if entity @s[tag=SklEarplugsLv2] run scoreboard players set #mhdp_temp_voice_res MhdpCore 2
# アーマー確認
    execute if entity @s[tag=PlyArmorHyper] run scoreboard players set #mhdp_temp_voice_res MhdpCore 2

# フレーム回避確認
    execute if entity @s[scores={MhdpTAvoid=1..}] run function mhdp_core:player/damage/player_avoid
    execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players set #mhdp_temp_voice_res MhdpCore 3

# 移動不可エフェクト付与
    execute if score #mhdp_temp_voice_lv MhdpCore > #mhdp_temp_voice_res MhdpCore at @s run summon area_effect_cloud ~ ~ ~ {Tags:["AecPoison"],Duration:6,Age:4,Effects:[{Id:2,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:8,Amplifier:127b,Duration:1,ShowParticles:0b}]}
# データ更新
    data modify storage mhdp_core:temp Temp.Effects set from entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects
    execute store result storage mhdp_core:temp Temp.Effects[0].Duration int 1 run scoreboard players get #mhdp_temp_voice_time MhdpCore
    execute store result storage mhdp_core:temp Temp.Effects[1].Duration int 1 run scoreboard players get #mhdp_temp_voice_time MhdpCore
    data modify entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects set from storage mhdp_core:temp Temp.Effects
    tag @e[type=area_effect_cloud,tag=AecPoison] remove AecPoison

# 下を向く
    execute if score #mhdp_temp_voice_lv MhdpCore > #mhdp_temp_voice_res MhdpCore at @s run tp @s ~ ~ ~ ~ 90

# 武器の行動中断処理
    execute if score #mhdp_temp_voice_lv MhdpCore > #mhdp_temp_voice_res MhdpCore run function mhdp_weapons:core/interruption/
    execute if score #mhdp_temp_voice_lv MhdpCore > #mhdp_temp_voice_res MhdpCore run scoreboard players operation @s MhdpWeaponDeactivateTimer = #mhdp_temp_voice_time MhdpCore

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_voice_lv

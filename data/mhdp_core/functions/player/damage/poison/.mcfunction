#> mhdp_core:player/damage/poison/
#
# 毒を受けた際の処理

# スキル確認
    execute if entity @s[tag=SklTeoBlsLv2] run tag @s add NotPoison

# スキルによる効果軽減
    execute unless entity @s[tag=!SklTeoBlsLv1,tag=SklPosionproofLv2] run scoreboard players remove #mhdp_temp_poison_lv MhdpCore 1
    scoreboard players operation #mhdp_temp_poison_time MhdpCore *= #asam_const_100 AsaMatrix
    scoreboard players set #mhdp_temp_const MhdpCore 70
    execute if entity @s[tag=SklPosionproofLv1] run scoreboard players operation #mhdp_temp_poison_time MhdpCore *= #mhdp_temp_const MhdpCore
    scoreboard players operation #mhdp_temp_poison_time MhdpCore /= #asam_const_100 AsaMatrix

# 毒エフェクト付与
    execute unless entity @s[tag=NotPoison] if score #mhdp_temp_poison_lv MhdpCore matches 0.. at @s run summon area_effect_cloud ~ ~ ~ {Tags:["AecPoison"],Duration:6,Age:4,Effects:[{Id:19,Amplifier:0b,Duration:200,ShowParticles:1b}]}
# データ更新
    data modify storage mhdp_core:temp Temp.Effects set from entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects[0]
    execute store result storage mhdp_core:temp Temp.Effects.Duration int 1 run scoreboard players get #mhdp_temp_poison_time MhdpCore
    execute store result storage mhdp_core:temp Temp.Effects.Aplifier byte 1 run scoreboard players get #mhdp_temp_poison_lv MhdpCore
    data modify entity @e[type=area_effect_cloud,tag=AecPoison,limit=1] Effects[0] set from storage mhdp_core:temp Temp.Effects
    tag @e[type=area_effect_cloud,tag=AecPoison] remove AecPoison

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_const
    tag @s remove NotPoison

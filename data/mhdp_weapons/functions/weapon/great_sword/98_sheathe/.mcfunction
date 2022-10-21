#> mhdp_weapons:weapon/great_sword/98_sheathe/
#
# 大剣の納刀処理

# リセット処理
     function mhdp_weapons:weapon/great_sword/99_reset/

# 移動速度低下
     execute if entity @s[tag=!SklQuickSheath] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:20,ShowParticles:0b}]}
     execute if entity @s[tag=!SklQuickSheath] run scoreboard players set @s MhdpWeaponDeactivateTimer 20
     # スキル：納刀術
          execute if entity @s[tag=SklQuickSheath] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:10,ShowParticles:0b}]}
          execute if entity @s[tag=SklQuickSheath] run scoreboard players set @s MhdpWeaponDeactivateTimer 10

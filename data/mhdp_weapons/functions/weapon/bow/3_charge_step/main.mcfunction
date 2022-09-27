#> mhdp_weapons:weapon/bow/3_charge_step/main
#
# 弓：チャージステップ

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 移動
    execute rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotater] rotated ~ 0 run function mhdp_core:player/sneak/avoid/main_move

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=11..}] run function mhdp_weapons:weapon/bow/3_charge_step/end

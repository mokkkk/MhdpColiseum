#> mhdp_weapons:weapon/short_sword/11_just_0/main
#
# 片手剣：ジャストラッシュ１

# 対象紐づけ
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s add Target
    execute if entity @s[scores={MhdpWeaponTimer=..8}] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s remove Target

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..4}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=9}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_3
    execute if entity @s[scores={MhdpWeaponTimer=15}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_4
    execute if entity @s[scores={MhdpWeaponTimer=18}] run function mhdp_weapons:weapon/short_sword/11_just_0/animation_5

# 移動禁止
    execute if entity @s[scores={MhdpWeaponTimer=1..}] run effect give @s slowness 1 5 true
# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~-5
    execute if entity @s[scores={MhdpWeaponTimer=..7}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_weapons:weapon/short_sword/7_step/move
    execute if entity @s[scores={MhdpWeaponTimer=8..10}] run tp @s ~ ~ ~ ~ ~4
    execute if entity @s[scores={MhdpWeaponTimer=13..15}] run tp @s ~ ~ ~ ~ ~-2
# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..7}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3
# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/short_sword/11_just_0/attack

# 溜め
    execute if entity @s[scores={MhdpWeaponTimer=20..22}] run tp @s ~ ~ ~ ~-1.2 ~-1
    execute if entity @s[scores={MhdpWeaponTimer=23..25}] run tp @s ~ ~ ~ ~3 ~2
    execute if entity @s[scores={MhdpWeaponTimer=23..34}] run particle crit ~ ~1.4 ~ 0.5 0.5 0.5 1 1
    execute if entity @s[scores={MhdpWeaponTimer=35}] run function mhdp_weapons:weapon/short_sword/11_just_0/charge

# 遷移
    # 右クリック時，ジャストラッシュ２に移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=20..70}] run function mhdp_weapons:weapon/short_sword/11_just_0/change_next
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=20..70}] run function mhdp_core:player/sneak/avoid/start_

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=71..}] run function mhdp_weapons:weapon/short_sword/11_just_0/end
    execute if entity @s[scores={MhdpWeaponTimer=8}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

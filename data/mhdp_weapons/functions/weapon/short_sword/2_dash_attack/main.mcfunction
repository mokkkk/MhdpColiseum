#> mhdp_weapons:weapon/short_sword/2_dash_attack/main
#
# 片手剣：突進斬り

# 対象紐づけ
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run tag @s add Target
    execute if entity @s[scores={MhdpWeaponTimer=..5}] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run tag @s remove Target

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..4}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_2

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~-5
    execute if entity @s[scores={MhdpWeaponTimer=..5}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_core:player/sneak/avoid/main_move
    execute if entity @s[scores={MhdpWeaponTimer=4..6}] run tp @s ~ ~ ~ ~ ~2
    execute if entity @s[scores={MhdpWeaponTimer=7..9}] run tp @s ~ ~ ~ ~ ~-1

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..3}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/attack

# 遷移
    # 右クリック時，盾攻撃１に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=9..20}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/change_bash
    # スニーク+右クリック時，回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=9..20}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/change_spin
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=9..20}] run function mhdp_core:player/sneak/avoid/start_

# タグ消去
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/remove_tag
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/end
    execute if entity @s[scores={MhdpWeaponTimer=6}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]
    execute if entity @s[scores={MhdpWeaponTimer=..6}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

#> mhdp_weapons:weapon/short_sword/8_charge_attack/main
#
# 片手剣：突進斬り

# 対象紐づけ
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s add Target
    execute if entity @s[scores={MhdpWeaponTimer=..8}] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s remove Target

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..4}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=9}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_2

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~-5
    execute if entity @s[scores={MhdpWeaponTimer=..7}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_core:player/sneak/avoid/main_move
    execute if entity @s[scores={MhdpWeaponTimer=8..10}] run tp @s ~ ~ ~ ~ ~4
    execute if entity @s[scores={MhdpWeaponTimer=13..15}] run tp @s ~ ~ ~ ~ ~-2

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..7}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/short_sword/8_charge_attack/attack

# デバッグ用
    execute if entity @s[scores={MhdpWeaponTimer=13}] run tag @s add WpnSswordHit

# 遷移
    # 攻撃ヒット時，駆け上がり斬りに移行
        execute if entity @s[tag=WpnSswordHit,scores={MhdpWeaponTimer=13}] run function mhdp_weapons:weapon/short_sword/8_charge_attack/change_jump
    # 右クリック時，盾攻撃１に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=14..20}] run function mhdp_weapons:weapon/short_sword/8_charge_attack/change_bash
    # スニーク+右クリック時，回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=14..20}] run function mhdp_weapons:weapon/short_sword/8_charge_attack/change_spin
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=14..20}] run function mhdp_core:player/sneak/avoid/start_

# タグ消去
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/remove_tag
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/short_sword/8_charge_attack/end
    execute if entity @s[scores={MhdpWeaponTimer=8}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

#> mhdp_weapons:weapon/short_sword/15_wire/main
#
# 片手剣：飛影

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/animation_2

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~-5
    execute if entity @s[scores={MhdpWeaponTimer=2..3}] run tp @s ~ ~ ~ ~ ~4

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/short_sword/15_wire/attack

# 遷移
    # 攻撃ヒット時，駆け上がり斬りに移行
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/short_sword/15_wire/change_jump
    # 右クリック時，盾攻撃１に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=6..20}] run function mhdp_weapons:weapon/short_sword/15_wire/change_bash
    # スニーク+右クリック時，回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=6..20}] run function mhdp_weapons:weapon/short_sword/15_wire/change_spin
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=6..20}] run function mhdp_core:player/sneak/avoid/start_

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/short_sword/15_wire/end
    execute if entity @s[scores={MhdpWeaponTimer=8}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

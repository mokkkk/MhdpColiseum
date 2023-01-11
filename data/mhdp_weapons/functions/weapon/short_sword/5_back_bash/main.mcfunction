#> mhdp_weapons:weapon/short_sword/5_back_bash/main
#
# 片手剣：盾攻撃２

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/5_back_bash/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run function mhdp_weapons:weapon/short_sword/5_back_bash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/short_sword/5_back_bash/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~5 ~
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/5_back_bash/attack
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run tp @s ~ ~ ~ ~-3 ~

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s slowness 1 3 true

# ステップ回避ロック解除
    execute if entity @s[scores={MhdpWeaponTimer=5}] run tag @s remove PlySneakAvoidLock

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=18..}] run function mhdp_weapons:weapon/short_sword/5_back_bash/end

# 遷移
    # スニーク+右クリック時，回転斬りに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=6..}] run function mhdp_weapons:weapon/short_sword/5_back_bash/change_spin
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[tag=!PlySneakCurrent,scores={MhdpJump=1..,MhdpWeaponTimer=6..}] run function mhdp_core:player/sneak/avoid/start_
    # スニーク+ジャンプ時，バックステップに移行
        execute if entity @s[tag=PlySneakCurrent,scores={MhdpJump=1..,MhdpWeaponTimer=6..}] run function mhdp_weapons:weapon/short_sword/5_back_bash/change_step

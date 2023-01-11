#> mhdp_weapons:weapon/great_sword/5_upper/main
#
# 大剣：斬り上げ

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_1

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~4
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/great_sword/5_upper/attack
    execute if entity @s[scores={MhdpWeaponTimer=3..5}] run tp @s ~ ~ ~ ~ ~-2.5

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1..1}] run effect give @s slowness 1 1 true
    execute if entity @s[tag=!PlyJumpping,scores={MhdpWeaponTimer=1..16}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1..16,MhdpJump=1..}] run tp @s @s

# ステップ回避ロック解除
    execute if entity @s[scores={MhdpWeaponTimer=6}] run tag @s remove PlySneakAvoidLock

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=28..}] run function mhdp_weapons:weapon/great_sword/5_upper/end

# 遷移
    # 右クリックした場合，薙ぎ払いに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=5..}] run tag @s add RClicked
        execute if entity @s[tag=RClicked,scores={MhdpWeaponTimer=16..}] run function mhdp_weapons:weapon/great_sword/5_upper/change_sweep
    # 右クリック中の場合，溜め斬りに移行
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!RClicked,scores={MhdpWeaponTimer=16..}] run function mhdp_weapons:weapon/great_sword/5_upper/change_charge
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=16..}] run function mhdp_core:player/sneak/avoid/start_

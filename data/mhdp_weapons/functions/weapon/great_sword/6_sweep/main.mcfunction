#> mhdp_weapons:weapon/great_sword/6_sweep/main
#
# 大剣：薙ぎ払い

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/6_sweep/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/great_sword/6_sweep/animation_1

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~3 ~2
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/great_sword/6_sweep/attack
    execute if entity @s[scores={MhdpWeaponTimer=10..12}] run tp @s ~ ~ ~ ~-1.5 ~

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1..15}] run effect give @s slowness 1 5 true
    execute if entity @s[tag=!PlyJumpping,scores={MhdpWeaponTimer=1..19}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1..19,MhdpJump=1..}] run tp @s @s

# ステップ回避ロック解除
    execute if entity @s[scores={MhdpWeaponTimer=20..}] run tag @s remove PlySneakAvoidLock

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=35..}] run function mhdp_weapons:weapon/great_sword/6_sweep/end

# 遷移
    # 右クリックした場合，斬り上げに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=10..}] run tag @s add RClicked
        execute if entity @s[tag=RClicked,scores={MhdpWeaponTimer=18..}] run function mhdp_weapons:weapon/great_sword/6_sweep/change_upper
    # 右クリック中の場合，溜め斬りに移行
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!RClicked,scores={MhdpWeaponTimer=25..}] run function mhdp_weapons:weapon/great_sword/6_sweep/change_charge
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=20..}] run function mhdp_core:player/sneak/avoid/start_
    
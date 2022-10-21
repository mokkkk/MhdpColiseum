#> mhdp_weapons:weapon/great_sword/5_upper/main
#
# 大剣：斬り上げ

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=33}] run function mhdp_weapons:weapon/great_sword/5_upper/animation_1

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/great_sword/5_upper/attack

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1..15}] run effect give @s slowness 1 5 true
    execute if entity @s[scores={MhdpWeaponTimer=1..15}] run effect give @s jump_boost 1 128 true

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=35..}] run function mhdp_weapons:weapon/great_sword/5_upper/end

# 遷移
    # 右クリックした場合，薙ぎ払いに移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=10..}] run tag @s add RClicked
        execute if entity @s[tag=RClicked,scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/great_sword/5_upper/change_sweep
    # 右クリック中の場合，溜め斬りに移行
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!RClicked,scores={MhdpWeaponTimer=25..}] run function mhdp_weapons:weapon/great_sword/5_upper/change_charge

#> mhdp_weapons:weapon/short_sword/6_spin/main
#
# 片手剣：回転斬り

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/6_spin/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/6_spin/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=4}] run function mhdp_weapons:weapon/short_sword/6_spin/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/short_sword/6_spin/animation_3
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/short_sword/6_spin/animation_2

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~-5 ~2
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/6_spin/attack
    execute if entity @s[scores={MhdpWeaponTimer=3..6}] run tp @s ~ ~ ~ ~3 ~-1.5
    execute if entity @s[scores={MhdpWeaponTimer=7..10}] run tp @s ~ ~ ~ ~-0.5 ~

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=20..}] run function mhdp_weapons:weapon/short_sword/6_spin/end

# 遷移
    # スニーク+ジャンプ時，バックステップに移行
        execute if entity @s[tag=PlySneakCurrent,scores={MhdpJump=1..,MhdpWeaponTimer=8..}] run function mhdp_weapons:weapon/short_sword/6_spin/change_step

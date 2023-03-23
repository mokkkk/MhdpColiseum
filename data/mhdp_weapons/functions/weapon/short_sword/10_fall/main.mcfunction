#> mhdp_weapons:weapon/short_sword/10_fall/main
#
# 片手剣：フォールバッシュ

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..}] run function mhdp_weapons:weapon/short_sword/10_fall/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=10..12}] run function mhdp_weapons:weapon/short_sword/10_fall/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=13..}] run function mhdp_weapons:weapon/short_sword/10_fall/animation_2

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1..9}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=10}] run function mhdp_weapons:weapon/short_sword/10_fall/move

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~-5 ~-1
    execute if entity @s[scores={MhdpWeaponTimer=10}] at @s run function mhdp_weapons:weapon/short_sword/10_fall/attack
    execute if entity @s[scores={MhdpWeaponTimer=10..11}] at @s run tp @s ~ ~ ~ ~3 ~1

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=22..}] run function mhdp_weapons:weapon/short_sword/10_fall/end

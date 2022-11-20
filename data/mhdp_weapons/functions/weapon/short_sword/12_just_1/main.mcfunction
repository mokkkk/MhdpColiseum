#> mhdp_weapons:weapon/short_sword/12_just_1/main
#
# 片手剣：ジャストラッシュ２

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..2}] run function mhdp_weapons:weapon/short_sword/4_bash/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run function mhdp_weapons:weapon/short_sword/4_bash/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5..6}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_8
    execute if entity @s[scores={MhdpWeaponTimer=7}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=14}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=17}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_3
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_4
    execute if entity @s[scores={MhdpWeaponTimer=22}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_5
    execute if entity @s[scores={MhdpWeaponTimer=25}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_6
    execute if entity @s[scores={MhdpWeaponTimer=28}] run function mhdp_weapons:weapon/short_sword/12_just_1/animation_7

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~-5 ~-1
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/short_sword/12_just_1/attack_0
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run tp @s ~ ~ ~ ~3 ~1
    execute if entity @s[scores={MhdpWeaponTimer=9}] run tp @s ~ ~ ~ ~5 ~-2
    execute if entity @s[scores={MhdpWeaponTimer=13}] run function mhdp_weapons:weapon/short_sword/12_just_1/attack_1
    execute if entity @s[scores={MhdpWeaponTimer=11..16}] run tp @s ~ ~ ~ ~-1 ~0.5
    execute if entity @s[scores={MhdpWeaponTimer=17}] run tp @s ~ ~ ~ ~-6 ~-3
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/short_sword/12_just_1/attack_2
    execute if entity @s[scores={MhdpWeaponTimer=19..24}] run tp @s ~ ~ ~ ~1.5 ~0.5

# 移動速度低下
    effect give @s slowness 1 5 true

# 溜め
    execute if entity @s[scores={MhdpWeaponTimer=28..30}] run tp @s ~ ~ ~ ~-1.2 ~-1
    execute if entity @s[scores={MhdpWeaponTimer=31..33}] run tp @s ~ ~ ~ ~3 ~2
    execute if entity @s[scores={MhdpWeaponTimer=31..42}] run particle crit ~ ~1.4 ~ 0.5 0.5 0.5 1 1
    execute if entity @s[scores={MhdpWeaponTimer=43}] run function mhdp_weapons:weapon/short_sword/11_just_0/charge

# 遷移
    # 右クリック時，ジャストラッシュ３に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=!PlySneakCurrent,scores={MhdpWeaponTimer=28..78}] run function mhdp_weapons:weapon/short_sword/12_just_1/change_next

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=79..}] run function mhdp_weapons:weapon/short_sword/12_just_1/end

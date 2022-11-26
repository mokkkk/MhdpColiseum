#> mhdp_weapons:weapon/short_sword/13_just_2/main
#
# 片手剣：ジャストラッシュ３

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..2}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5..7}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~-5 ~-1
    execute if entity @s[scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/short_sword/13_just_2/attack_0
    execute if entity @s[scores={MhdpWeaponTimer=3..4}] run tp @s ~ ~ ~ ~3 ~1

# 移動速度低下
    effect give @s slowness 1 5 true

# 溜め
    execute if entity @s[scores={MhdpWeaponTimer=6..19}] run particle crit ~ ~1.4 ~ 0.5 0.5 0.5 1 1
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/short_sword/11_just_0/charge

# 遷移
    # 右クリック時，ジャストラッシュ３に移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=8..60}] run function mhdp_weapons:weapon/short_sword/13_just_2/change_next
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=8..60}] run function mhdp_core:player/sneak/avoid/start_
    
# 終了
    execute if entity @s[scores={MhdpWeaponTimer=61..}] run function mhdp_weapons:weapon/short_sword/13_just_2/end

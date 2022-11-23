#> mhdp_weapons:weapon/bow/7_pierce/main
#
# 弓：竜の一矢

# コンボ用タイマー
    execute if entity @s[scores={MhdpWeaponTimer=30..}] run scoreboard players add @s MhdpWeaponTimer 1
    execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=29}] run scoreboard players add @s MhdpWeaponTimer 1
    execute if entity @s[scores={MhdpWeaponTimer=..28}] run scoreboard players add @s MhdpWeaponTimer 1

# 移動禁止
    execute if entity @s[scores={MhdpWeaponTimer=1..35}] run tp @s @s
    effect give @s slowness 1 5 true

# アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..2}] run function mhdp_weapons:weapon/bow/7_pierce/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/bow/7_pierce/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/bow/7_pierce/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=7}] run function mhdp_weapons:weapon/bow/7_pierce/animation_3

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1..27}] anchored eyes run particle crit ^ ^ ^1 0 0 0 1 3
    execute if entity @s[scores={MhdpWeaponTimer=28}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2
    execute if entity @s[scores={MhdpWeaponTimer=28}] anchored eyes run particle crit ^ ^ ^1 0 0 0 1 30

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=30}] run function mhdp_weapons:weapon/bow/7_pierce/attack

# 遷移
    # ジャンプしたとき，チャージステップに移行
        execute if entity @s[scores={MhdpJump=1..,MhdpStamina=1..,MhdpWeaponTimer=36..}] run function mhdp_weapons:weapon/bow/7_pierce/change_charge_step

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=60..}] run function mhdp_weapons:weapon/bow/7_pierce/end

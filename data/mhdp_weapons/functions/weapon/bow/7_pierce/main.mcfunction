#> mhdp_weapons:weapon/bow/7_pierce/main
#
# 弓：竜の一矢

# コンボ用タイマー
    execute if entity @s[scores={MhdpWeaponTimer=20..}] run scoreboard players add @s MhdpWeaponTimer 1
    execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=19}] run scoreboard players add @s MhdpWeaponTimer 1
    execute if entity @s[scores={MhdpWeaponTimer=..18}] run scoreboard players add @s MhdpWeaponTimer 1

# 移動禁止
    execute if entity @s[scores={MhdpWeaponTimer=1..35}] run tp @s @s
    effect give @s slowness 1 5 true

# アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1..2}] run function mhdp_weapons:weapon/bow/7_pierce/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/bow/7_pierce/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/bow/7_pierce/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=7}] run function mhdp_weapons:weapon/bow/7_pierce/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=20}] run function mhdp_weapons:weapon/bow/7_pierce/attack

# 遷移
    # ジャンプしたとき，チャージステップに移行
        execute if entity @s[scores={MhdpJump=1..,MhdpStamina=1..,MhdpWeaponTimer=36..}] run function mhdp_weapons:weapon/bow/7_pierce/change_charge_step

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=60..}] run function mhdp_weapons:weapon/bow/7_pierce/end

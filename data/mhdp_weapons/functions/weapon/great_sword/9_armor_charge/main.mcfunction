#> mhdp_weapons:weapon/great_sword/9_armor_charge/main
#
# 大剣：金剛溜め

# 対象紐づけ
    execute if entity @s[scores={MhdpWeaponTimer=..45}] run tag @s add Target
    execute if entity @s[scores={MhdpWeaponTimer=..45}] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    execute if entity @s[scores={MhdpWeaponTimer=..45}] run tag @s remove Target

# スニーク解除時，移動停止
    execute if entity @s[tag=!PlySneakCurrent,scores={MhdpWeaponTimer=..35}] run scoreboard players set @s MhdpWeaponTimer 36

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run function mhdp_weapons:weapon/great_sword/2_charge/animation

# 溜めスコア増加
    execute if entity @s[scores={MhdpWeaponCharge=..1500}] run function mhdp_weapons:weapon/great_sword/9_armor_charge/main_charge

# 移動禁止
    effect give @s slowness 1 10 true

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=6..30}] align y rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] run function mhdp_weapons:weapon/great_sword/9_armor_charge/move_0
    execute if entity @s[scores={MhdpWeaponTimer=31..40}] align y rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] run function mhdp_weapons:weapon/great_sword/9_armor_charge/move_1
    execute if entity @s[scores={MhdpWeaponTimer=41..45}] align y rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] run function mhdp_weapons:weapon/great_sword/9_armor_charge/move_2
    execute if entity @s[scores={MhdpWeaponTimer=45}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

# 一定スコア毎に溜め段階増加
    execute if entity @s[tag=!WpnGswordCharge1,scores={MhdpWeaponCharge=200..300}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_1
    execute if entity @s[tag=!WpnGswordCharge2,scores={MhdpWeaponCharge=400..500}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_2
    execute if entity @s[tag=!WpnGswordCharge3,scores={MhdpWeaponCharge=600..700}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_3
    execute if entity @s[tag=WpnGswordCharge3,scores={MhdpWeaponCharge=900..1000}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_4

# 遷移
    # 溜めスコアが一定以上になったとき，強制的に溜め斬りに移行
        execute if entity @s[scores={MhdpWeaponCharge=1100..}] run function mhdp_weapons:weapon/great_sword/9_armor_charge/change_charge_attack
    # 右クリックを解除したとき，溜め斬りに移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=10..}] run function mhdp_weapons:weapon/great_sword/9_armor_charge/change_charge_attack

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=..45}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

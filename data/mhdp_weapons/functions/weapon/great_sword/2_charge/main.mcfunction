#> mhdp_weapons:weapon/great_sword/2_charge/main
#
# 大剣：溜め

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run function mhdp_weapons:weapon/great_sword/2_charge/animation

# 溜めスコア増加
    execute if entity @s[scores={MhdpWeaponCharge=..1500}] run function mhdp_weapons:weapon/great_sword/2_charge/main_charge

# 移動禁止
    execute if entity @s[tag=!PlyJumpping,scores={MhdpWeaponTimer=..10}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1..10,MhdpJump=1..}] run tp @s @s
    effect give @s slowness 1 1 true

# 一定スコア毎に溜め段階増加
    execute if entity @s[tag=!WpnGswordCharge1,scores={MhdpWeaponCharge=200..300}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_1
    execute if entity @s[tag=!WpnGswordCharge2,scores={MhdpWeaponCharge=400..500}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_2
    execute if entity @s[tag=!WpnGswordCharge3,scores={MhdpWeaponCharge=600..700}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_3
    execute if entity @s[tag=WpnGswordCharge3,scores={MhdpWeaponCharge=900..1000}] run function mhdp_weapons:weapon/great_sword/2_charge/charge_4

# 遷移
    # 抜刀攻撃時，右クリックを素早く解除したとき，即座に溜め斬りに移行
        execute if entity @s[tag=PlyDrawAttack,tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=5..6}] run function mhdp_weapons:weapon/great_sword/2_charge/change_charge_attack
    # 溜めスコアが一定以上になったとき，強制的に溜め斬りに移行
        execute if entity @s[scores={MhdpWeaponCharge=1100..}] run function mhdp_weapons:weapon/great_sword/2_charge/change_charge_attack
    # 右クリックを解除したとき，溜め斬りに移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=10..}] run function mhdp_weapons:weapon/great_sword/2_charge/change_charge_attack
    # ジャンプしたとき，タックルに移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=10..,MhdpStamina=1..}] run function mhdp_weapons:weapon/great_sword/2_charge/change_tackle

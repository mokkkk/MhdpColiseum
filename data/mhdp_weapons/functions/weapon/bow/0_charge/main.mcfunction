#> mhdp_weapons:weapon/bow/0_charge/main
#
# 弓：溜め

# 引き絞りモーション
    execute if entity @s[scores={MhdpWeaponTimer=..4}] run function mhdp_weapons:weapon/bow/0_charge/animation

# 溜めスコア増加
    execute if entity @s[tag=!SklBowChargePlus,scores={MhdpWeaponCharge=..600}] run function mhdp_weapons:weapon/bow/0_charge/main_charge
    # スキル：溜め段階開放
        execute if entity @s[tag=SklBowChargePlus,scores={MhdpWeaponCharge=..800}] run scoreboard players add @s MhdpWeaponCharge 10

# 集中力消費
    execute unless entity @s[tag=!SklRunner] run scoreboard players remove @s MhdpWeaponExt 3
    # スキル：ランナー
        execute unless entity @s[tag=SklRunner] run scoreboard players remove @s MhdpWeaponExt 2

# 移動速度上昇
    execute if entity @s[scores={MhdpWeaponTimer=5..}] run effect give @s speed 1 15 true

# 一定スコア毎に溜め段階増加
    execute if entity @s[tag=!WpnBowCharge1,scores={MhdpWeaponCharge=200..300}] run function mhdp_weapons:weapon/bow/0_charge/charge_1
    execute if entity @s[tag=!WpnBowCharge2,scores={MhdpWeaponCharge=400..500}] run function mhdp_weapons:weapon/bow/0_charge/charge_2
    execute if entity @s[tag=!WpnBowCharge3,scores={MhdpWeaponCharge=600..700}] run function mhdp_weapons:weapon/bow/0_charge/charge_3
    execute if entity @s[tag=SklBowChargePlus,tag=!WpnBowCharge4,scores={MhdpWeaponCharge=800..}] run function mhdp_weapons:weapon/bow/0_charge/charge_4

# 遷移
    # 集中力が0以下になったとき，強制的に射撃に移行
        execute if entity @s[scores={MhdpWeaponExt=..0,MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/bow/0_charge/change_shot
    # 右クリックを解除したとき，射撃に移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponExt=1..,MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/bow/0_charge/change_shot
    # 2回スニークしたとき，チャージステップに移行
        execute if entity @s[tag=PlySneakDouble,scores={MhdpWeaponExt=1..,MhdpWeaponTimer=5..}] run function mhdp_weapons:weapon/bow/0_charge/change_charge_step

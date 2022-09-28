#> mhdp_weapons:weapon/bow/1_shot/main
#
# 弓：射撃

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 遷移
    # スニーク + 右クリック操作時，剛射に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=5..14}] run function mhdp_weapons:weapon/bow/1_shot/change_hard_shot
    # 2回スニーク時，チャージステップに移行
        execute if entity @s[tag=PlySneakDouble,scores={MhdpWeaponTimer=5..14,MhdpWeaponExt=1..}] run function mhdp_weapons:weapon/bow/1_shot/change_charge_step
    # 溜め段階が最大でない && 右クリック長押し中の場合，射撃に移行
        execute if entity @s[tag=!SklBowChargePlus,tag=!WpnBowCharge3,tag=PlyUsingEyeCurrent,scores={MhdpWeaponTimer=15..20,MhdpWeaponExt=1..}] run function mhdp_weapons:weapon/bow/1_shot/change_charge
        execute if entity @s[tag=SklBowChargePlus,tag=!WpnBowCharge4,tag=PlyUsingEyeCurrent,scores={MhdpWeaponTimer=15..20,MhdpWeaponExt=1..}] run function mhdp_weapons:weapon/bow/1_shot/change_charge

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/bow/1_shot/end

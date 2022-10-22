#> mhdp_weapons:weapon/bow/3_shot/main
#
# 弓：射撃

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 遷移
    # スニーク + 右クリック操作時，剛射に移行
        execute if entity @s[tag=PlyUsingEyeStart,tag=PlySneakCurrent,scores={MhdpWeaponTimer=5..14}] run function mhdp_weapons:weapon/bow/3_shot/change_hard_shot
    # ジャンプ時，チャージステップに移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=5..14,MhdpStamina=1..}] run function mhdp_weapons:weapon/bow/3_shot/change_charge_step
    # 溜め段階が最大でない && 右クリック長押し中の場合，溜めに移行
        execute if entity @s[tag=!SklBowChargePlus,tag=!WpnBowCharge3,tag=PlyUsingEyeCurrent,scores={MhdpWeaponTimer=15..20,MhdpStamina=1..}] run function mhdp_weapons:weapon/bow/3_shot/change_charge
        execute if entity @s[tag=SklBowChargePlus,tag=!WpnBowCharge4,tag=PlyUsingEyeCurrent,scores={MhdpWeaponTimer=15..20,MhdpStamina=1..}] run function mhdp_weapons:weapon/bow/3_shot/change_charge

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/bow/3_shot/end

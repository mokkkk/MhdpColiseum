#> mhdp_weapons:weapon/short_sword/0_tick/
#
# 片手剣：納刀時でも実行する処理
#

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# スタミナ回復
    execute if entity @s[tag=!PlyStaminaNotRegen,tag=!WpnSswordGuard,scores={MhdpStamina=..999}] run scoreboard players add @s MhdpStamina 6
    execute if entity @s[tag=!WpnSswordGuard,scores={MhdpStamina=1001..}] run scoreboard players set @s MhdpStamina 1000

# 直接攻撃タイマー設定
    execute if entity @s[scores={MhdpWeaponTimerSsword=1..}] run scoreboard players remove @s MhdpWeaponTimerSsword 1

# 盾攻撃と回転斬りの判定用
    execute if entity @s[tag=PlySneakCurrent,scores={MhdpWeaponTimerSsword=1..}] run tag @s add IsSpin

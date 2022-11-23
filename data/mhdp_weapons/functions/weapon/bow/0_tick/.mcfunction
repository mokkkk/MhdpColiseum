#> mhdp_weapons:weapon/bow/0_tick/
#
# 弓：納刀時でも実行する処理
#

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# スタミナ回復
    execute if entity @s[tag=!PlyStaminaNotRegen,tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowHShot,tag=!WpnBowCStep,scores={MhdpStamina=..999}] run scoreboard players add @s MhdpStamina 4
    execute if entity @s[tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowHShot,tag=!WpnBowCStep,scores={MhdpStamina=1001..}] run scoreboard players set @s MhdpStamina 1000

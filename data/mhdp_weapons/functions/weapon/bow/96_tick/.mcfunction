#> mhdp_weapons:weapon/bow/96_tick/
#
# 弓：納刀時でも実行する処理
#

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# 集中力ゲージ回復
    execute if entity @s[tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowHShot,tag=!WpnBowCStep,scores={MhdpWeaponExt=..599}] run scoreboard players add @s MhdpWeaponExt 10
    execute if entity @s[tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowHShot,tag=!WpnBowCStep,scores={MhdpWeaponExt=601..}] run scoreboard players set @s MhdpWeaponExt 600

# UI表示
    execute as @a run title @s actionbar {"score":{"name":"@s","objective":"MhdpWeaponExt"},"color":"black"}

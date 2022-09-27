#> mhdp_weapons:weapon/bow/normal
#
# 弓のメイン処理・通常
#

#declare tag WpnBowCharge 弓溜め中
#declare tag WpnBowShot 弓射撃中
#declare tag WpnBowCStep 弓チャージステップ中
#declare tag WpnBowCharge1 弓溜め段階管理用
#declare tag WpnBowCharge2 弓溜め段階管理用
#declare tag WpnBowCharge3 弓溜め段階管理用
#declare tag WpnBowCharge4 弓溜め段階管理用

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# 集中力ゲージ回復
    execute if entity @s[tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowCStep,scores={MhdpWeaponExt=..599}] run scoreboard players add @s MhdpWeaponExt 2
    execute if entity @s[tag=!WpnBowCharge,tag=!WpnBowShot,tag=!WpnBowCStep,scores={MhdpWeaponExt=601..}] run scoreboard players set @s MhdpWeaponExt 600

# 0_溜め：
## 立ち → 右クリック長押し
    execute if entity @s[tag=IsDrawing,tag=!WpnBowShot,tag=!WpnBowCharge,tag=!WpnBowCStep,tag=PlyUsingEyeCurrent] run function mhdp_weapons:weapon/bow/0_charge/start
    execute if entity @s[tag=IsDrawing,tag=WpnBowCharge] run function mhdp_weapons:weapon/bow/0_charge/main

# 1_射撃：
## 溜め → 右クリック離す
    execute if entity @s[tag=IsDrawing,tag=WpnBowShot] run function mhdp_weapons:weapon/bow/1_shot/main

# 2_剛射：
## 射撃 → スニーク+右クリック

# 3_チャージステップ：
## 溜め → 2回スニーク
    execute if entity @s[tag=IsDrawing,tag=WpnBowCStep] run function mhdp_weapons:weapon/bow/3_charge_step/main

# 終了
    tag @s remove IsDrawing

execute as @a run title @s actionbar {"score":{"name":"@s","objective":"MhdpWeaponExt"},"color":"black"}
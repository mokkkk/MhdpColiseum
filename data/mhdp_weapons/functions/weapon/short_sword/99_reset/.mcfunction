#> mhdp_weapons:weapon/short_sword/99_reset/
#
# 片手剣のリセット処理
#

# 抜刀中：モデル等リセット
     execute if entity @s[tag=PlyWeaponDrawing] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run function mhdp_weapons:weapon/short_sword/99_reset/model

# スコア消去
     scoreboard players set @s MhdpWeaponCharge 0
     scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
     tag @s remove WpnSsword2DA
     tag @s remove WpnSsword3Guard
     tag @s remove WpnSsword3GuardEnd
     tag @s remove WpnSsword4SB1
     tag @s remove WpnSsword5SB2
     tag @s remove WpnSsword6Spin
     tag @s remove WpnSsword7Step
     tag @s remove WpnSsword8CA
     tag @s remove WpnSsword9Jump
     tag @s remove WpnSsword10Fall
     tag @s remove WpnSsword11Just0
     tag @s remove WpnSsword12Just1
     tag @s remove WpnSsword13Just2
     tag @s remove WpnSsword14Just3
     tag @s remove WpnSswordCharged
     tag @s remove WpnSswordJust

# ステップ回避ロック解除
     tag @s remove PlySneakAvoidLock

# 移動速度リセット
     effect clear @s speed
     effect clear @s slowness

# 突進斬り中断
     tag @s add Target
     execute if entity @s[tag=!PlySneakAvoidFunc] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
     tag @s remove Target
     execute if entity @s[tag=!PlySneakAvoidFunc] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

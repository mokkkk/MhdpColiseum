#> mhdp_weapons:weapon/great_sword/99_reset/
#
# 大剣のリセット処理
#

# 抜刀中：モデル等リセット
     execute if entity @s[tag=PlyWeaponDrawing] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run function mhdp_weapons:weapon/great_sword/99_reset/model

# スコア消去
     scoreboard players set @s MhdpWeaponCharge 0
     scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
     tag @s remove WpnGswordCharge
     tag @s remove WpnGswordChargeAttack
     tag @s remove WpnGswordUpper
     tag @s remove WpnGswordSweep
     tag @s remove WpnGswordGuard
     tag @s remove WpnGswordGuardEnd
     tag @s remove WpnGswordCharge1
     tag @s remove WpnGswordCharge2
     tag @s remove WpnGswordCharge3
     tag @s remove WpnGsword8Edge
     tag @s remove WpnGsword9Armor
     tag @s remove HitStopNormal
     tag @s remove HitStopLong

# ステップ回避ロック解除
     tag @s remove PlySneakAvoidLock

# 移動速度リセット
     effect clear @s speed
     effect clear @s slowness

# marker削除
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    tag @s remove Target
    kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

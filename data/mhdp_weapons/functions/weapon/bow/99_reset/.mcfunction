#> mhdp_weapons:weapon/bow/99_reset/
#
# 弓のリセット処理
#

# 抜刀中：モデル等リセット
     execute if entity @s[tag=PlyWeaponDrawing] run function mhdp_weapons:weapon/bow/99_reset/model

# スコア消去
     scoreboard players set @s MhdpWeaponCharge 0
     scoreboard players set @s MhdpWeaponTimer 0

# タグ消去
     tag @s remove WpnBowCharge
     tag @s remove WpnBowShot
     tag @s remove WpnBowHShot
     tag @s remove WpnBowCStep
     tag @s remove WpnBowCharge1
     tag @s remove WpnBowCharge2
     tag @s remove WpnBowCharge3
     tag @s remove WpnBowCharge4

# ステップ回避ロック解除
     tag @s remove PlySneakAvoidLock

# 移動速度リセット
     effect clear @s speed
     effect clear @s slowness

# チャージステップ中断
     tag @s add Target
     execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
     tag @s remove Target
     kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

#> mhdp_weapons:weapon/bow/99_reset/
#
# 弓のリセット処理
#

# スコア消去

# タグ消去
     tag @s remove WpnBowCharge
     tag @s remove WpnBowShot
     tag @s remove WpnBowStep
     tag @s remove WpnBowCharge1
     tag @s remove WpnBowCharge2
     tag @s remove WpnBowCharge3
     tag @s remove WpnBowCharge4

# スニーク回避ロック解除
     tag @s remove PlySneakAvoidLock

# チャージステップリセット
     tag @s add Target
     execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
     tag @s remove Target
     kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

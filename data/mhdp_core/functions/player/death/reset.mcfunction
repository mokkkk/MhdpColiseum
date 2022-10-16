#> mhdp_core:player/death/reset
#
# プレイヤー死亡時処理 タグなどのリセット

# 移動回避中断
     tag @s add Target
     execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
     tag @s remove Target
     kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]

# ノックバック中断
     execute if entity @s[scores={MhdpTKnockback=1..}] run function mhdp_core:player/damage/knockback/end
     execute if entity @s[scores={MhdpTKnockback=1..}] run scoreboard players set @s MhdpTKnockback 0
     tag @s remove PlyArmorHyper
     tag @s remove PlyArmorSuper

# 属性やられ中断
     scoreboard players set @s MhdpBlightFire 0
     scoreboard players set @s MhdpBlightWater 0
     scoreboard players set @s MhdpBlightIce 0
     scoreboard players set @s MhdpBlightDragon 0
     effect clear @s

# ターゲットタグ消去
    tag @s remove MnsTarget

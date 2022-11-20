#> mhdp_core:player/damage/knockback/wind/guard
#
# プレイヤーノックバック開始処理 ガード確認

# ガード確認
    scoreboard players set $MhdpGuard ScoreDamageCore 0
    execute if entity @s[tag=PlyWpnGsword,tag=WpnGswordGuard] run tag @s add NotKnockback
    execute if entity @s[tag=PlyWpnGsword,tag=WpnSsword3Guard] run tag @s add NotKnockback

# ガード成功時，演出
    execute if entity @s[tag=NotKnockback] run playsound item.shield.block master @s ~ ~ ~ 1 1
    execute if entity @s[tag=NotKnockback] run scoreboard players remove @s MhdpStamina 300
    execute if entity @s[tag=NotKnockback] run tag @s add PlyGuardSuccess
    execute if entity @s[tag=NotKnockback] run function mhdp_core:player/damage/knockback/damage/0
    execute if entity @s[tag=NotKnockback] run tag @s remove PlyGuardSuccess

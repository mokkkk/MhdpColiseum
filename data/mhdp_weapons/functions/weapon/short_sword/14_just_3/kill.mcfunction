#> mhdp_weapons:weapon/short_sword/14_just_3/kill
#
# 翔蟲 tick処理 ノックバック用パーツ消去

# 効果音
    playsound block.grass.step master @a ~ ~ ~ 1 1

# 対象紐づけ
    execute as @e[type=area_effect_cloud,tag=WpnSswordKnockback] if score @s MhdpCore = #mhdp_global_knockback_kill_id MhdpCore run tag @s add KillTarget
    execute as @e[type=area_effect_cloud,tag=WpnSswordKnockback,tag=KillTarget] at @s positioned ~ ~0.4 ~ run tag @e[type=minecraft:slime,distance=..0.1] add KillTarget

# 消去
    tp @e[tag=WpnSswordKnockback,tag=KillTarget] ~ ~-1000 ~
    kill @e[tag=WpnSswordKnockback,tag=KillTarget]
    scoreboard players add #mhdp_global_knockback_kill_id MhdpCore 1

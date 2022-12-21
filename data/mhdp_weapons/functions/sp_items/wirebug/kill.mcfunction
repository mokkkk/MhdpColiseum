#> mhdp_weapons:sp_items/wirebug/kill
#
# 翔蟲 tick処理 ノックバック用パーツ消去

# 効果音
    playsound block.grass.step master @a ~ ~ ~ 1 1

# 対象紐づけ
    execute as @e[type=area_effect_cloud,tag=MhdpKnockbackParts] if score @s MhdpCore = #mhdp_global_knockback_kill_id MhdpCore run tag @s add KillTarget
    execute as @e[type=area_effect_cloud,tag=MhdpKnockbackParts,tag=KillTarget] at @s positioned ~ ~0.4 ~ run tag @e[type=minecraft:slime,distance=..0.1] add KillTarget

# 対象が見つからなかった場合
    execute unless entity @e[tag=KillTarget] run say 対象見つからない
    execute unless entity @e[tag=KillTarget] run tag @s add TargetNotFound

# 消去
    tp @e[tag=MhdpKnockbackParts,tag=KillTarget] ~ ~-1000 ~
    kill @e[tag=MhdpKnockbackParts,tag=KillTarget]
    scoreboard players add #mhdp_global_knockback_kill_id MhdpCore 1

# バグ対策
    execute if entity @s[tag=TargetNotFound] run function mhdp_weapons:sp_items/wirebug/anti_bug

say 消去
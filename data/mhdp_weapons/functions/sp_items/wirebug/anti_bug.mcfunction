#> mhdp_weapons:sp_items/wirebug/anti_bug
#
# 翔蟲 バグ対策

# パーツ消去
    tp @e[tag=MhdpKnockbackParts] ~ ~-1000 ~
    kill @e[tag=MhdpKnockbackParts]

# IDをそろえる
    scoreboard players operation #mhdp_global_knockback_id MhdpCore = #mhdp_global_knockback_kill_id MhdpCore

# 終了
    tag @s remove TargetNotFound
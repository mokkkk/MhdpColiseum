#> mhdp_core:player/damage/knockback/end
#
# ノックバック終了時処理

# タグ消去
    tag @s remove MdhpKnockbackDW
    tag @s remove MdhpKnockbackD
    tag @s remove MdhpKnockbackW
    tag @s remove MdhpKnockback

# ノックバック基準位置を削除する
    execute unless entity @a[tag=MdhpKnockback] run kill @e[type=marker,tag=MhdpKnockbackPos]

# ノックバック用に出していたMobを片づける
    tp @e[tag=MhdpKnockbackParts] ~ ~-1000 ~
    kill @e[tag=MhdpKnockbackParts]

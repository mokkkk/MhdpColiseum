#> mhdp_weapons:sp_items/wirebug/effect
#
# 翔蟲 tick処理

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=WirebugStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target
    execute rotated as @e[type=marker,tag=WirebugStand,tag=Rotater,limit=1] run function mhdp_weapons:sp_items/wirebug/effect_

# 移動
    tp @s @s

# 終了
    tag @e[type=marker,tag=WirebugStand] remove Rotater
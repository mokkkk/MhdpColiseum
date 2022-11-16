#> mhdp_weapons:sp_items/wirebug/reset
#
# 翔蟲 リセット処理

# 使用中の場合はクールタイム開始
    execute if entity @s[tag=ItmUseWirebug] run function mhdp_weapons:sp_items/wirebug/end

# 紐づけmarker削除
    tag @s add Target
    execute as @e[type=marker,tag=WirebugStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target
    kill @e[type=marker,tag=WirebugStand,tag=Rotater]

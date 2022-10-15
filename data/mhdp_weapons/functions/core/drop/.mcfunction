#> mhdp_weapons:core/drop/
#
# 武器投げ捨て時

# 抜刀中の場合，納刀処理実行
    execute if entity @s[tag=PlyWeaponDrawing] run function mhdp_weapons:core/sheathe/weapon

# 抜刀中の場合，納刀中に変更
    execute if entity @s[tag=PlyWeaponDrawing] run playsound item.armor.equip_iron master @a ~ ~ ~ 1 0.7
    execute if entity @s[tag=PlyWeaponDrawing] run tag @s remove PlyWeaponDrawing
    execute if entity @s[tag=PlyWeaponDrawingSub] run tag @s remove PlyWeaponDrawingSub

# 投げた武器を消去
    execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{MhdpWeapon:1b}}}] run kill @s
    execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{MhdpWeaponSub:1b}}}] run kill @s

# 武器を納刀状態にしてオフハンドに持たせる
    function mhdp_weapons:core/reset/count

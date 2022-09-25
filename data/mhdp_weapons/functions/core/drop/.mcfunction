#> mhdp_weapons:core/drop/
#
# 武器投げ捨て時

# 投げた武器を消去
    execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{MhdpWeapon:1b}}}] run kill @s

# 武器を納刀状態にしてオフハンドに持たせる
    function mhdp_weapons:core/reset/count

say 投げ捨て
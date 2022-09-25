#> mhdp_weapons:core/drop/
#
# 武器投げ捨て時

# 投げた武器を消去
    execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{MhdpWeapon:1b}}}] run kill @s

# どこかにある武器を消去
    clear @s ender_eye{MhdpWeapon:1b} 64

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag

# 退避した武器データをオフハンドにコピー
    item replace entity @s weapon.offhand from block 0 0 0 container.0

# 終了


say 投げ捨て
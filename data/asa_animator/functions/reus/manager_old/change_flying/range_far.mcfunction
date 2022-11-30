
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/far

# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
# 前進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyMoveF
# 回り込み左
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyMoveL
# 回り込み右
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyMoveR

kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
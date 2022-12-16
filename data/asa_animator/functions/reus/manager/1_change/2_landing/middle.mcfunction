#> asa_animator:reus/manager/1_change/2_landing/middle
#
# 火竜 地上行動 中

# 抽選
    loot spawn ~ 0 ~ loot asa_animator:reus/normal/middle

# 突進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:reus/manager/1_change/1_animations/breath
# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmMove
# チャージ嚙みつき（前方確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBiteC

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land middle
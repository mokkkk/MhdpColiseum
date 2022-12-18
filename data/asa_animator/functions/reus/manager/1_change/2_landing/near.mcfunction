#> asa_animator:reus/manager/1_change/2_landing/near
#
# 火竜 地上行動 近

# 抽選
    loot spawn ~ 0 ~ loot asa_animator:reus/normal/near

# 噛みつき（前方確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBite
# 尻尾回転（後方確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:reus/manager/1_change/1_animations/tail_spin
# 床ドン（その他確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump
# 突進（前方確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmDashStart
# チャージ嚙みつき（前方確率上昇）
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBiteC
# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:reus/manager/1_change/1_animations/breath

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land near
#> asa_animator:reus/manager/1_change/2_landing/far
#
# 火竜 地上行動 遠

# 抽選
    loot spawn ~ 0 ~ loot asa_animator:reus/normal/far

# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:reus/manager/1_change/1_animations/breath
# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMove
# 飛行開始
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:reus/manager/1_change/3_start_fly/

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say land far
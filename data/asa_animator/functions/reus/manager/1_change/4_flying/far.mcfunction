#> asa_animator:reus/manager/1_change/4_flying/far
#
# 火竜 飛行行動 遠

# 抽選
    loot spawn ~ 0 ~ loot asa_animator:reus/flying/far

# 回り込み
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:reus/manager/1_change/1_animations/fmove
# 爪急襲
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFDash
# 滑空ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:reus/manager/1_change/1_animations/fbreath

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

say fly far
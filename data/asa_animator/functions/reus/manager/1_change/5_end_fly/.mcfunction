#> asa_animator:reus/manager/1_change/5_end_fly/
#
# 火竜 飛行 → 地上 切り替え

# 抽選
    loot spawn ~ 0 ~ loot asa_animator:reus/flying/fly2land

# 3連ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFBreath3
# 地上強襲
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFJump
# 回り込み着地
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:reus/manager/1_change/1_animations/fmoveland
# 縦なぎ払い火炎放射
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFBreathV

# 終了
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
    scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0

say end fly
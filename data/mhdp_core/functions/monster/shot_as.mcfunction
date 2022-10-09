#> mhdp_core:monster/shot_as
#
# モンスターの射撃攻撃管理（ArmorStand）

# 共通
    execute if entity @s[tag=MonsterTail] run function mhdp_core:monster/tail/main_bullet

# 火竜
    execute if entity @s[tag=ReusBreath] run function asa_animator:reus/anim/breath/events/main_bullet

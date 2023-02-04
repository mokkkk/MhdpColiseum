scoreboard players set @s AsaMatrix 0
tag @s remove AnmHandR2L

# お手3段目以降，アニメーション終了
    execute if entity @s[tag=IsHand3] run tag @s add AnmHandLE

# 超帯電時，アニメーション続行
    execute if entity @s[tag=IsThunder,tag=!IsHand3] run function asa_animator:zinogre/anim/hand_r_to_l/events/change

# お手3段目以降，アニメーション終了
    execute unless entity @s[tag=IsHand3] run tag @s add AnmHandLE

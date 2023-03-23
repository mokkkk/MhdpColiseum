#> asa_animator:reus/manager/1_change/check_pos
#
# 火竜 プレイヤーとの位置関係取得

# 前方
    execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
    execute facing entity @e[tag=ReusAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos1"]}
    execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..1.2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] run tag @s add IsForward
    execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..1.2]

# 後方
    execute rotated as @s rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^1 {Tags:["MhdpRotater","MhdpPos0"]}
    execute facing entity @e[tag=ReusAttackTarget,limit=1] feet rotated ~ 0 positioned 0 0 0 run summon marker ^ ^ ^-1 {Tags:["MhdpRotater","MhdpPos1"]}
    execute positioned 0 0 0 positioned as @e[type=marker,tag=MhdpPos0,distance=0..1.2] if entity @e[type=marker,tag=MhdpPos1,distance=0..1] run tag @s add IsBack
    execute positioned 0 0 0 run kill @e[type=marker,tag=MhdpRotater,distance=0..1.2]

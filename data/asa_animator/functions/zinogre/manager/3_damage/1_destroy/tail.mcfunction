#> asa_animator:reus/manager/3_damage/1_destroy/tail
#
# 火竜 部位破壊処理 尻尾

# モデル変更
    data modify entity @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10123
    data modify entity @e[type=armor_stand,tag=ReusParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084

# タグ付与
    tag @s add DestroyTail

# 演出
    execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append

# 尻尾当たり判定消去
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run data modify entity @s Size set value 0
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run tp @s ~ 0 ~
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run tag @s add Death
    kill @e[type=slime,tag=ReusParts,tag=Tail3]

# 尻尾設置
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","MonsterTail","ReusTail"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10013,Rotate:[0f,0f,0f]}}],Pose:{Head:[15f,0f,0f]}}
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @e[type=armor_stand,tag=ReusParts,tag=Tail3,limit=1] run tp @s ~ ~3 ~ ~ ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @s run function asa_animator:general/check_ground
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @s run tp @s ~ ~-1.1 ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] run data modify entity @s Pose.Head[0] set value 0.0f

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append

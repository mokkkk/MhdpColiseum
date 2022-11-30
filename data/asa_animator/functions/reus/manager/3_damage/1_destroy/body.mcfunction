#> asa_animator:reus/manager/3_damage/1_destroy/body
#
# 火竜 部位破壊処理 胴体

# モデル変更
    data modify entity @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10121
    data modify entity @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10122

# タグ付与
    tag @s add DestroyBody

# 演出
    execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    execute as @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append

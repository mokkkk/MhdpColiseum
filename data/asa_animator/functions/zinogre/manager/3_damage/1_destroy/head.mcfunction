#> asa_animator:reus/manager/3_damage/1_destroy/head
#
# 火竜 部位破壊処理 頭

# モデル変更
    data modify entity @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10119

# タグ付与
    tag @s add DestroyHead

# 演出
    execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append

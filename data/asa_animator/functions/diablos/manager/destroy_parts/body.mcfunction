data modify entity @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10293
tag @s add DestroyBody
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/diablos_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:diablos/manager/remove_animation_tag
tag @s add AnmDBody

advancement grant @a[distance=0..64] only mhdp_core:toasts/diablos
schedule function asa_animator:diablos/manager/destroy_parts/revoke 5t
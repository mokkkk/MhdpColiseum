#> mhdp_core:vfx/gsword/slash/start
#
# 大剣 汎用斬りエフェクト表示

# 表示用marker
    execute rotated ~ 0 positioned ^-0.6 ^0.2 ^ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["VfxStand","VfxGswordS","MonsterShot","Start"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:1006}}],Pose:{Head:[60f,0f,0f]}}

# 角度設定
    data modify storage mhdp_core:temp Pose.Head set value [0f, 0f, 0f]
    execute store result score #mhdp_temp_rand MhdpCore run data get entity @s Rotation[0] 100
    scoreboard players remove #mhdp_temp_rand MhdpCore 9000
    execute store result storage mhdp_core:temp Pose.Head[1] float 0.01 run scoreboard players get #mhdp_temp_rand MhdpCore
    data modify storage mhdp_core:temp Pose.Head[2] set from entity @s Rotation[1] 

# 乱数取得・角度設定
    scoreboard players set #mhdp_temp_const MhdpCore 20
    function lib:random/
    scoreboard players operation #mhdp_temp_rand MhdpCore %= #mhdp_temp_const MhdpCore
    scoreboard players remove #mhdp_temp_rand MhdpCore 45
    execute store result storage mhdp_core:temp Pose.Head[0] float 1 run scoreboard players get #mhdp_temp_rand MhdpCore
    data modify entity @e[type=armor_stand,tag=VfxGswordS,tag=Start,limit=1] Pose.Head set from storage mhdp_core:temp Pose.Head

# 終了
    tag @e[type=armor_stand,tag=VfxGswordS,tag=Start] remove Start
    data remove storage mhdp_core:temp Pose.Head

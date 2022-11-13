#> mhdp_weapons:sp_items/wirebug/start_
#
# 翔蟲 使用開始処理

# タイマー設定
    scoreboard players set @s MhdpTItmWirebug 0

# タグ付与
    tag @s add ItmUseWirebug

# 演出
    playsound item.trident.throw master @a ~ ~ ~ 1 1.5

# 移動禁止
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:6b,Duration:20,ShowParticles:0b}]}
    effect give @s levitation 1 255 true
    tag @s add PlyArmorHyper

# 位置保存用Marker召喚
    summon marker ~ ~ ~ {Tags:["WirebugStand","Start"]}
# 処理用MarkerにUidコピー
    scoreboard players operation @e[type=marker,tag=WirebugStand,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    execute if entity @s[tag=!ItmCoolWirebug] as @e[type=marker,tag=WirebugStand,tag=Start] run tp @s ~ ~ ~ ~ ~
    tag @e[type=marker,tag=WirebugStand,tag=Start] remove Start

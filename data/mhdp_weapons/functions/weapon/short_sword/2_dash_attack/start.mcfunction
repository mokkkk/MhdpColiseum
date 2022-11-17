#> mhdp_weapons:weapon/short_sword/2_dash_attack/start
#
# 片手剣：突進斬り開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword2DA

# 移動処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand1","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 開始地点
        function oh_my_dat:please
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s run tp @s ~ ~ ~
    # 移動先
        execute as @e[type=marker,tag=SneakAvoidStand1,tag=Start] run tp @s ~ ~ ~
    # 移動方向検知
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s facing entity @e[type=marker,tag=SneakAvoidStand1,tag=Start] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    # プレイヤー移動有無検知
        data modify storage mhdp_core:temp Temp.Pos1 set from entity @e[type=marker,tag=SneakAvoidStand0,tag=Start,limit=1] Pos
        data modify storage mhdp_core:temp Temp.Pos2 set from entity @s Pos
        data modify storage mhdp_core:temp Temp.Pos1[1] set value 0.0
        data modify storage mhdp_core:temp Temp.Pos2[1] set value 0.0
        execute store success score #mhdp_temp_success MhdpCore as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify storage mhdp_core:temp Temp.Pos1 set from storage mhdp_core:temp Temp.Pos2
        execute unless score #mhdp_temp_success MhdpCore matches 1.. rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~

# 移動速度リセット
    effect clear @s speed

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    kill @e[type=marker,tag=SneakAvoidStand1,tag=Start]
    scoreboard players reset #mhdp_temp_success MhdpCore
    data remove storage mhdp_core:temp Temp

say 突進斬り
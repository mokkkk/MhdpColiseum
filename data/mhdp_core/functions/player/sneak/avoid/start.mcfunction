#> mhdp_core:player/sneak/avoid/start
#
# プレイヤースニーク検知用に実行する処理

# タグ付与
    tag @s add PlySneakAvoidStart
    # tag @s add PlySneakAvoidCurrent

# スニーク回避処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand1","Start"]}
    # 開始地点
        function oh_my_dat:please
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Action.SneakPos0
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s run tp @s ~ ~ ~
    # 移動先
        execute as @e[type=marker,tag=SneakAvoidStand1,tag=Start] run tp @s ~ ~ ~

    # 移動方向検知
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s facing entity @e[type=marker,tag=SneakAvoidStand1,tag=Start] feet rotated ~ 0 run function mhdp_core:player/sneak/avoid/test

    # 終了
        kill @e[type=marker,tag=SneakAvoidStand0,tag=Start]
        kill @e[type=marker,tag=SneakAvoidStand1,tag=Start]

say 2連続スニーク
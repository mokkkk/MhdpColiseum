#> mhdp_core:player/sneak/avoid/start
#
# プレイヤースニーク検知用に実行する処理

# タグ付与
    tag @s add PlySneakAvoidStart
    tag @s add PlySneakAvoidFunc

# 処理用スコア設定
    scoreboard players set @s MhdpFuncSneakAvoid 25

# 無敵時間設定
    scoreboard players set @s MhdpTAvoid 5
    # スキル処理
        # 回避本能
            execute if entity @s[tag=CharmNarga,scores={MhdpHealth=..6}] run scoreboard players set @s MhdpTAvoid 7
    # 属性やられ処理
        # 火属性やられ
            execute if entity @s[tag=BlightFire] run scoreboard players remove @s MhdpBlightFire 100

# スニーク回避処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand1","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 開始地点
        function oh_my_dat:please
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Action.SneakPos0
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s run tp @s ~ ~ ~
    # 移動先
        execute as @e[type=marker,tag=SneakAvoidStand1,tag=Start] run tp @s ~ ~ ~
    # 移動方向検知
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s facing entity @e[type=marker,tag=SneakAvoidStand1,tag=Start] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    # プレイヤー移動有無検知
        execute store success score #mhdp_temp_success MhdpCore as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from entity @p Pos
        execute unless score #mhdp_temp_success MhdpCore matches 1.. rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    kill @e[type=marker,tag=SneakAvoidStand1,tag=Start]
    scoreboard players reset #mhdp_temp_success

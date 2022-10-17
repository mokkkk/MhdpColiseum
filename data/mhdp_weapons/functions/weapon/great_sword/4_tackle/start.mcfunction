#> mhdp_weapons:weapon/great_sword/4_tackle/start
#
# 大剣：タックル開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGSwordTacckle

# ステップ回避処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 開始地点
        function oh_my_dat:please
        # execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Action.SneakPos0
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] at @s run tp @s ~ ~ ~
    # 移動方向決定
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~

# 移動速度リセット
    effect clear @s speed

# 演出
    execute if entity @s[tag=!SklBowChargePlus,tag=!WpnBowCharge3] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
    execute if entity @s[tag=SklBowChargePlus,tag=!WpnBowCharge4] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    kill @e[type=marker,tag=SneakAvoidStand1,tag=Start]
    scoreboard players reset #mhdp_temp_success
    data remove storage mhdp_core:temp Temp

say チャージステップ
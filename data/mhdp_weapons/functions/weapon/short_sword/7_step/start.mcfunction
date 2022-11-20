#> mhdp_weapons:weapon/short_sword/7_step/start
#
# 片手剣：バックステップ開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0
# 溜め時間リセット
    scoreboard players set @s MhdpWeaponCharge 0

# タグ更新
    tag @s add WpnSsword7Step
    tag @s add PlySneakAvoidLock

# 移動処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 移動先
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~180 ~

# 移動速度リセット
    effect clear @s speed

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    scoreboard players reset #mhdp_temp_success MhdpCore
    data remove storage mhdp_core:temp Temp

say バックステップ
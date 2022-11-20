#> mhdp_weapons:weapon/short_sword/2_dash_attack/start
#
# 片手剣：突進斬り開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword2DA
# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 移動処理開始
    # 処理用Marker召喚
        execute if entity @s[tag=!PlyJumpping] run summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~
    
# 移動速度リセット
    effect clear @s speed

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    scoreboard players reset #mhdp_temp_success MhdpCore
    data remove storage mhdp_core:temp Temp

say 突進斬り
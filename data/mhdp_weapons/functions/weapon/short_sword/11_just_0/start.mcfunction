#> mhdp_weapons:weapon/short_sword/11_just_0/start
#
# 片手剣：ジャストラッシュ開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword11Just0
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

say ジャストラッシュ１
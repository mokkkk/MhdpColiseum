#> mhdp_core:player/death/animation/start
#
# 死亡演出実行処理 開始

# 地面で実行
    function asa_animator:general/check_ground

# 位置保存用Marker召喚
    # 処理用Marker召喚
        execute positioned as @s positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["DeathAnimationStand","Start"]}
        execute as @e[type=marker,tag=DeathAnimationStand,tag=Start] run data modify entity @s Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Rotation.Pre
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=DeathAnimationStand,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid

# barrier設置
    execute positioned as @s positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~1 ~ barrier

# 武器処理中断
    scoreboard players set @s MhdpWeaponDeactivateTimer 100000

# プレイヤーRotation調整
    execute at @e[type=marker,tag=DeathAnimationStand,tag=Start] run tp @s ~ ~ ~ ~ ~
    
# 終了
    tag @e[type=marker,tag=DeathAnimationStand,tag=Start] remove Start

#> mhdp_core:player/death/animation/start
#
# 死亡演出実行処理 開始

# 位置保存用Marker召喚
    # 処理用Marker召喚
        execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["DeathAnimationStand","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=DeathAnimationStand,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid

# barrier設置
    execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~1 ~ barrier

# 武器処理中断
    scoreboard players set @s MhdpWeaponDeactivateTimer 100000
    
# 終了
    tag @e[type=marker,tag=DeathAnimationStand,tag=Start] remove Start

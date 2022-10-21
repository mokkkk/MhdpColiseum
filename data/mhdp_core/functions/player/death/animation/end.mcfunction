#> mhdp_core:player/death/animation/end
#
# 死亡演出実行処理 終了

# 念のため対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=DeathAnimationStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Position
    tag @s remove Target

# 終了
    execute positioned as @e[type=marker,tag=DeathAnimationStand] run setblock ~ ~1 ~ air
    kill @e[type=marker,tag=DeathAnimationStand,tag=Position]
    execute as @e[type=marker,tag=DeathAnimationStand] run tag @s remove Position
    tag @s remove PlyDeathAnimation
    scoreboard players set @s MhdpWeaponDeactivateTimer 0
    
# フィールドに移動
    # 大闘技場
        execute if data storage mh_dp:status GameStatus.Quest{Field:1} run tp @s 221 66 141
    # リスポーン地点リセット
        execute at @s run spawnpoint @s

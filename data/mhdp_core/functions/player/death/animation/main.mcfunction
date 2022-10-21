#> mhdp_core:player/death/animation/main
#
# 死亡演出実行処理

# タイマー増加
    scoreboard players add @s MhdpTDeathAnimation 1

# 開始処理
    execute if entity @s[scores={MhdpTDeathAnimation=1}] run function mhdp_core:player/death/animation/start

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=DeathAnimationStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Position
    tag @s remove Target

# 移動を封じる
    effect give @s slowness 1 10 true
    effect give @s resistance 1 10 true
    execute positioned as @e[type=marker,tag=DeathAnimationStand] unless entity @s[distance=..1] run tp @s ~ ~ ~

# 終了
# クエスト失敗時のみ，帰還するまで終了しない
    execute if entity @s[scores={MhdpTDeathAnimation=60..}] unless data storage mh_dp:status GameStatus{Phase:5} run function mhdp_core:player/death/animation/end
    tag @e[type=marker,tag=Position,tag=DeathAnimationStand] remove Position

#> mhdp_weapons:weapon/great_sword/4_tackle/start
#
# 大剣：タックル開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordTackle

# 溜め段階タグ消去
    tag @s remove WpnGswordCharge1
    tag @s remove WpnGswordCharge2
    tag @s remove WpnGswordCharge3

# ハイパーアーマー開始
    tag @s add PlyArmorHyper

# ステップ回避処理開始
    # 処理用Marker召喚
        summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
    # 移動方向決定
        execute as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] positioned as @s run tp @s ~ ~ ~ ~ ~
        execute positioned as @e[type=marker,tag=SneakAvoidStand0,tag=Start,limit=1] run tp @s ~ ~ ~ ~ ~ 

# 移動速度リセット
    effect clear @s speed

# 満腹度消費
    execute unless entity @s[tag=BltIce] run effect give @s hunger 1 120 true

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    data remove storage mhdp_core:temp Temp

say タックル
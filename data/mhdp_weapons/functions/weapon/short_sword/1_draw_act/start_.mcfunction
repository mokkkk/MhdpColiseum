#> mhdp_weapons:weapon/short_sword/1_draw_act/start_
#
# 片手剣：抜刀攻撃（突進斬り） 実行

# 武器移動処理
    # shulker_boxに武器データをコピー
        data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
        data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
        data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
        data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
        data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp
    # 退避した武器データをメインハンドにコピー
        item replace entity @s weapon.mainhand from block 0 0 0 container.0
    # オフハンドを空武器にする
        item replace entity @s weapon.offhand with air
        data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand

# 片手剣抜刀処理
    function mhdp_weapons:weapon/short_sword/97_draw/
    tag @s add PlyWeaponDrawing

# 抜刀攻撃開始処理
    # アニメーションタイマーリセット
        scoreboard players set @s MhdpWeaponTimer 0
    # タグ更新
        tag @s add WpnSsword2DA
    # ステップ回避ロック開始
        tag @s add PlySneakAvoidLock
    # 抜刀検知タグ追加
        tag @s add PlyDrawAttack
    # 翔蟲抜刀検知タグ追加
        execute if entity @s[tag=ItmUseWirebug] run tag @s add PlyDrawAttackWirebug

# 抜刀演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 1

# 移動処理開始
    # 処理用Marker召喚
        execute if entity @s[tag=!PlyJumpping] run summon marker ~ ~ ~ {Tags:["SneakAvoidStand0","Start"]}
    # 処理用MarkerにUidコピー
        scoreboard players operation @e[type=marker,tag=SneakAvoidStand0,tag=Start] MhdpPlayerUid = @s MhdpPlayerUid
        execute rotated ~ 0 as @e[type=marker,tag=SneakAvoidStand0,tag=Start] run tp @s ~ ~ ~ ~ ~

# 空中の場合，即座に攻撃
    execute if entity @s[tag=PlyJumpping] run scoreboard players set @s MhdpWeaponTimer 3

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    scoreboard players reset #mhdp_temp_success MhdpCore
    data remove storage mhdp_core:temp Temp

say 抜刀突進斬り開始
#> mhdp_weapons:weapon/short_sword/1_draw_act/start_wire_b
#
# 片手剣：抜刀攻撃（突進斬り） 実行 鉄蟲糸技

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
        tag @s add WpnSsword15Wire
    # ステップ回避ロック開始
        tag @s add PlySneakAvoidLock
    # 抜刀検知タグ追加
        tag @s add PlyDrawAttack
    # 翔蟲抜刀検知タグ追加
        tag @s add PlyDrawAttackWirebug

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.6
    # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEaUAMALJQJwBMzAtHQMwBsNHzlOGwCGAdgBmfZoxTNu4gIysArAoVgCAO2EBbBMkBhigAJ1BGMIy6AzknAoA9oU0QkdGgRRxncDLbAA3YWxCfXAADyR3MChIgF9YgktSNEIbRGYCKwgLF0QouGxsNBgrfQUaKIx7bIh9KLQrAFFC4tLGgEdCIOwoAGVzT3JEcSDS+IBdIA_3
    # 円 1
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-2 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.31287 ^ ^-1.97538 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.61803 ^ ^-1.90211 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.90798 ^ ^-1.78201 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.17557 ^ ^-1.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.41421 ^ ^-1.41421 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.61803 ^ ^-1.17557 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.78201 ^ ^-0.90798 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.90211 ^ ^-0.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.97538 ^ ^-0.31287 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^2 ^ ^0 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.97538 ^ ^0.31287 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.90211 ^ ^0.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.78201 ^ ^0.90798 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.61803 ^ ^1.17557 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.41421 ^ ^1.41421 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.17557 ^ ^1.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.90798 ^ ^1.78201 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.61803 ^ ^1.90211 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.31287 ^ ^1.97538 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^2 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.31287 ^ ^1.97538 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.61803 ^ ^1.90211 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.90798 ^ ^1.78201 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.17557 ^ ^1.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.41421 ^ ^1.41421 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.61803 ^ ^1.17557 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.78201 ^ ^0.90798 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.90211 ^ ^0.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.97538 ^ ^0.31287 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-2 ^ ^0 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.97538 ^ ^-0.31287 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.90211 ^ ^-0.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.78201 ^ ^-0.90798 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.61803 ^ ^-1.17557 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.41421 ^ ^-1.41421 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.17557 ^ ^-1.61803 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.90798 ^ ^-1.78201 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.61803 ^ ^-1.90211 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.31287 ^ ^-1.97538 0 0 0 0 1

# 終了
    data remove storage mhdp_core:temp Temp

# 翔蟲使用中止
    function mhdp_weapons:sp_items/wirebug/reset

say 鉄蟲糸技：飛影
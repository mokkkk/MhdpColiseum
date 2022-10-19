#> mhdp_weapons:weapon/great_sword/1_draw_act/start_
#
# 大剣：抜刀攻撃（溜め） 実行

# 武器移動処理
    # shulker_boxに武器データをコピー
        data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
        data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
        data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
        data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
        data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp
    # 退避した武器データをメインハンドにコピー
        item replace entity @s weapon.mainhand from block 0 0 0 container.0
    # オフハンドを空にする
        item replace entity @s weapon.offhand with air
        data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand

# 大剣抜刀処理
    function mhdp_weapons:weapon/great_sword/97_draw/
    tag @s add PlyWeaponDrawing

# 抜刀攻撃開始処理
    # アニメーションタイマーリセット
        scoreboard players set @s MhdpWeaponTimer 0
    # タグ更新
        tag @s add WpnGswordCharge
    # 溜めスコア初期化
        scoreboard players set @s MhdpWeaponCharge 0
    # ステップ回避ロック開始
        tag @s add PlySneakAvoidLock
    # 抜刀検知タグ追加
        tag @s add PlyDrawAttack

# 抜刀演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 1

# ジャンプ中に抜刀攻撃した場合，ちょっと跳ねる
    execute if entity @s[tag=PlyJumpping] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:16b,Duration:4,ShowParticles:0b}]}

say 抜刀溜め開始
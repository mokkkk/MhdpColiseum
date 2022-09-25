#> mhdp_weapons:core/check/
#
# 納刀中のオフハンド監視用
# スタックされるアイテムが正常に戻らない対策に，武器を戻した後にオフハンドアイテムを回収するようにする

# オフハンドが武器じゃない
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA
# オフハンドの武器が納刀フラグがついていない
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{IsDrawing:0b} run tag @s add FlagA

# A && オフハンドが空じゃない場合，オフハンドのアイテムを保存する
    execute if entity @s[tag=FlagA] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run function mhdp_weapons:core/check/off_store
# A の場合，オフハンドに納刀状態の武器を戻す
    execute if entity @s[tag=FlagA] run function mhdp_weapons:core/reset/count
# オフハンドのアイテムを回収する
    execute if entity @s[tag=StoreOffItem] run function mhdp_weapons:core/check/off_give

# 終了
    tag @s remove FlagA
    tag @s remove StoreOffItem

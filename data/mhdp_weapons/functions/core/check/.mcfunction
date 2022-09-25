#> mhdp_weapons:core/check/
#
# 納刀中のオフハンド監視用

# オフハンドが武器じゃない
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA
# オフハンドの武器が納刀フラグがついていない
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{IsIsDrawing:0b} run tag @s add FlagA

# A の場合，オフハンドに納刀状態の武器を戻す
    execute if entity @s[tag=FlagA] run function mhdp_weapons:core/reset/count

# 終了
    tag @s remove FlagA

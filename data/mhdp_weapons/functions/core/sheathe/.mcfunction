#> mhdp_weapons:core/sheathe/
#
# 納刀検知用

# A:オフハンドに納刀フラグMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:サブ武器なしの場合：メインハンドが空である
    execute unless entity @s[tag=PlyWeaponDrawingSub] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagB
# B:サブ武器ありの場合：メインハンドがサブ武器である
    execute if entity @s[tag=PlyWeaponDrawingSub] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeaponSub:1b} run tag @s add FlagB

# オフハンドに納刀フラグMHDP武器がある && メインハンドが空である場合，納刀成功
# その他の条件は強制納刀が実行されるので，考慮しない
    execute if entity @s[tag=FlagA,tag=FlagB] run function mhdp_weapons:core/sheathe/success

# 終了
    tag @s remove FlagA
    tag @s remove FlagB

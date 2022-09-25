#> mhdp_weapons:core/draw
#
# 抜刀検知用

# A:メインハンドに納刀フラグMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:オフハンドが空である
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run tag @s add FlagB

# A && Bの場合，抜刀成功
    # ここの文言を考える
    execute if entity @s[tag=FlagA,tag=FlagB] run say 抜刀

# A && !Bの場合，アイテムを戻し，警告文表示
    execute if entity @s[tag=FlagA,tag=!FlagB] run function mhdp_weapons:core/draw_fail

# 終了
    tag @s remove FlagA
    tag @s remove FlagB

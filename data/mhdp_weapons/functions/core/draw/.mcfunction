#> mhdp_weapons:core/draw/
#
# 抜刀検知用

# A:メインハンドに納刀フラグMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:オフハンドが空である
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand run tag @s add FlagB

# C:スニーク回避中でない
    execute unless entity @s[tag=PlySneakAvoidFunc] run tag @s add FlagC

# A && B && Cの場合，抜刀成功
    # ここの文言を考える
    execute if entity @s[tag=FlagA,tag=FlagB,tag=FlagC] run function mhdp_weapons:core/draw/success

# A && (!B || !C)の場合，アイテムを戻し，警告文表示
    execute unless entity @s[tag=FlagA,tag=FlagB,tag=FlagC] run function mhdp_weapons:core/draw/fail

# 終了
    tag @s remove FlagA
    tag @s remove FlagB
    tag @s remove FlagC

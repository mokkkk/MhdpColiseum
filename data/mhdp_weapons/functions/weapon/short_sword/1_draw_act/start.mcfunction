#> mhdp_weapons:weapon/short_sword/1_draw_act/start
#
# 片手剣：抜刀攻撃（突進斬り）

# A:オフハンドに納刀フラグMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:メインハンドが空である
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagB

# A && B && Cの場合，抜刀攻撃成功
    execute if entity @s[tag=FlagA,tag=FlagB] run function mhdp_weapons:weapon/short_sword/1_draw_act/start_

# 終了
    tag @s remove FlagA
    tag @s remove FlagB

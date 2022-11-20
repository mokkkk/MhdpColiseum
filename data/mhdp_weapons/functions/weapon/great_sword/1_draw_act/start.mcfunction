#> mhdp_weapons:weapon/great_sword/1_draw_act/start
#
# 大剣：抜刀攻撃（溜め）

# A:オフハンドに納刀フラグMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:メインハンドが空である
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagB

# A && B && Cの場合，抜刀攻撃成功
    #execute if entity @s[tag=FlagA,tag=FlagB,tag=] run function mhdp_weapons:weapon/great_sword/1_draw_act/start_
    execute if entity @s[tag=FlagA,tag=FlagB,tag=!ItmUseWirebug] run function mhdp_weapons:weapon/great_sword/1_draw_act/start_
    execute if entity @s[tag=FlagA,tag=FlagB,tag=ItmUseWirebug,scores={MhdpTItmWirebug=1..4}] run function mhdp_weapons:weapon/great_sword/1_draw_act/start_wire_a
    execute if entity @s[tag=FlagA,tag=FlagB,tag=ItmUseWirebug,scores={MhdpTItmWirebug=5..}] run function mhdp_weapons:weapon/great_sword/1_draw_act/start_wire_b

# 終了
    tag @s remove FlagA
    tag @s remove FlagB

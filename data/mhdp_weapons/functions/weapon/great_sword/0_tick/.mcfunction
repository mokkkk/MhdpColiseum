#> mhdp_weapons:weapon/great_sword/0_tick/
#
# 大剣：納刀時でも実行する処理
#

# 抜刀中確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} run tag @s add IsDrawing

# UI表示
    # execute as @a run title @s actionbar {"score":{"name":"@s","objective":"MhdpWeaponExt"},"color":"black"}

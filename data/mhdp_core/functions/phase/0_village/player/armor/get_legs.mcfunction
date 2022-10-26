#> mhdp_core:phase/0_village/player/armor/get_legs
#
# プレイヤー装備中の防具データを取得

# 防御力計算
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.Defence
    scoreboard players operation @s MhdpPlayerDefence += #mhdp_temp_armor MhdpCore

# 属性耐性計算
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.ElementDefence[0]
    scoreboard players operation @s MhdpPlayerResistFire += #mhdp_temp_armor MhdpCore
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.ElementDefence[1]
    scoreboard players operation @s MhdpPlayerResistWater += #mhdp_temp_armor MhdpCore
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.ElementDefence[2]
    scoreboard players operation @s MhdpPlayerResistThunder += #mhdp_temp_armor MhdpCore
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.ElementDefence[3]
    scoreboard players operation @s MhdpPlayerResistIce += #mhdp_temp_armor MhdpCore
    scoreboard players set #mhdp_temp_armor MhdpCore 0
    execute store result score #mhdp_temp_armor MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Armor.Legs.tag.Status.ElementDefence[4]
    scoreboard players operation @s MhdpPlayerResistDragon += #mhdp_temp_armor MhdpCore

# スキル値取得
    # To Do

# 終了
    advancement revoke @s only mhdp_core:player/inventory_changed/head_leather

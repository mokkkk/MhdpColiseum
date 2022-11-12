#> mhdp_core:phase/4_quest_cleared/back_home/setup/armor
#
# Phase4_クエストクリア 帰還処理 プレイヤー防具リセット

# 未装備の部位を消去
    execute if entity @s[tag=!PlyEquipArmorHead] run item replace entity @s armor.head with air
    execute if entity @s[tag=!PlyEquipArmorChest] run item replace entity @s armor.chest with air
    execute if entity @s[tag=!PlyEquipArmorLegs] run item replace entity @s armor.legs with air
    execute if entity @s[tag=!PlyEquipArmorFeet] run item replace entity @s armor.feet with air

# 束縛の呪い付与
    item modify entity @s armor.head mhdp_core:armor/remove_enchant
    item modify entity @s armor.chest mhdp_core:armor/remove_enchant
    item modify entity @s armor.legs mhdp_core:armor/remove_enchant
    item modify entity @s armor.feet mhdp_core:armor/remove_enchant

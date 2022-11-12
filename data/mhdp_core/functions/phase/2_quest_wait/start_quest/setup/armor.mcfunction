#> mhdp_core:phase/2_quest_wait/start_quest/setup/armor
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー防具セット

# 未装備の部位にとりあえず鉄防具を装備
    execute if entity @s[tag=!PlyEquipArmorHead] run item replace entity @s armor.head with iron_helmet{display:{Name:'{"text":""}'},HideFlags:7,Unbreakable:1b,CustomModelData:100}
    execute if entity @s[tag=!PlyEquipArmorChest] run item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":""}'},HideFlags:7,Unbreakable:1b,CustomModelData:100}
    execute if entity @s[tag=!PlyEquipArmorLegs] run item replace entity @s armor.legs with iron_leggings{display:{Name:'{"text":""}'},HideFlags:7,Unbreakable:1b,CustomModelData:100}
    execute if entity @s[tag=!PlyEquipArmorFeet] run item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":""}'},HideFlags:7,Unbreakable:1b,CustomModelData:100}

# 束縛の呪い付与
    item modify entity @s armor.head mhdp_core:armor/set_enchant
    item modify entity @s armor.chest mhdp_core:armor/set_enchant
    item modify entity @s armor.legs mhdp_core:armor/set_enchant
    item modify entity @s armor.feet mhdp_core:armor/set_enchant

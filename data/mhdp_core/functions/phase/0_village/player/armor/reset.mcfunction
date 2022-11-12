#> mhdp_core:phase/0_village/player/armor/reset
#
# 装備中防具データの消去

# スキル取得用
    data modify storage mhdp_core:temp Temp.Skills set value []

# 防御力リセット
    scoreboard players set @s MhdpPlayerDefence 0

# 属性耐性リセット
    scoreboard players set @s MhdpPlayerResistFire 0
    scoreboard players set @s MhdpPlayerResistWater 0
    scoreboard players set @s MhdpPlayerResistThunder 0
    scoreboard players set @s MhdpPlayerResistIce 0
    scoreboard players set @s MhdpPlayerResistDragon 0

# 装備状況タグリセット
    tag @s remove PlyEquipArmorHead
    tag @s remove PlyEquipArmorChest
    tag @s remove PlyEquipArmorLegs
    tag @s remove PlyEquipArmorFeet

# スキル用タグリセット
    # 1：攻撃
        tag @s remove SklAttackUpLv1
        tag @s remove SklAttackUpLv2
        tag @s remove SklAttackUpLv3
    # 2：火属性攻撃
        tag @s remove SklFireLv1
        tag @s remove SklFireLv2
        tag @s remove SklFireLv3
    # 3：風圧耐性
        tag @s remove SklWindproofLv1
        tag @s remove SklWindproofLv2

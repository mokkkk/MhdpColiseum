#> mhdp_weapons:weapon/great_sword/9_armor_charge/change_charge_attack
#
# 大剣：溜め → 溜め斬り

# タグ消去
    tag @s remove WpnGsword9Armor
    tag @s remove PlyArmorHyper

# 行動開始
    function mhdp_weapons:weapon/great_sword/3_charge_attack/start

# marker削除
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    tag @s remove Target
    kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotater]
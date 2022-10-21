#> mhdp_weapons:weapon/bow/3_shot/attack
#
# 弓：射撃 攻撃エフェクト
#

# 演出
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 1.5
    execute if entity @s[tag=!SklBowChargePlus,tag=WpnBowCharge3] run playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    execute if entity @s[tag=SklBowChargePlus,tag=WpnBowCharge4] run playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    playsound entity.arrow.shoot master @a ~ ~ ~ 2 1.2

# 射撃
    summon marker ~ ~ ~ {Tags:["MonsterShot","PlyArrow","Start"]}
    execute at @s positioned ~ ~1.65 ~ positioned ^ ^ ^1 run tp @e[type=marker,tag=PlyArrow,tag=Start] ~ ~ ~ ~ ~
    scoreboard players operation @e[type=marker,tag=PlyArrow,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid

# 溜め段階に応じたタグを付与
    execute if entity @s[tag=WpnBowCharge1] run tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add WpnBowCharge1
    execute if entity @s[tag=WpnBowCharge2] run tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add WpnBowCharge2
    execute if entity @s[tag=WpnBowCharge3] run tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add WpnBowCharge3
    execute if entity @s[tag=WpnBowCharge4] run tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add WpnBowCharge4

# 終了
    tag @e[type=marker,tag=PlyArrow,tag=Start] remove Start

# function mhdp_weapons:weapon/bow/test
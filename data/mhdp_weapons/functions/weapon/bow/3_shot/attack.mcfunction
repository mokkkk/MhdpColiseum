#> mhdp_weapons:weapon/bow/3_shot/attack
#
# 弓：射撃 攻撃エフェクト
#

# 演出
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 1.5
    execute if entity @s[tag=!SklBowChargePlus,tag=WpnBowCharge3] run playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    execute if entity @s[tag=SklBowChargePlus,tag=WpnBowCharge4] run playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    playsound entity.arrow.shoot master @a ~ ~ ~ 2 1.2

function mhdp_weapons:weapon/bow/test
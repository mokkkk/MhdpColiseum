#> mhdp_weapons:weapon/bow/7_pierce/attack
#
# 弓：射撃 攻撃エフェクト
#

# 武器アニメーション
    function mhdp_weapons:weapon/bow/6_jump/animation_1

# 演出
    playsound entity.firework_rocket.launch master @a ~ ~ ~ 2 0.7
    playsound entity.firework_rocket.launch master @a ~ ~ ~ 2 0.5
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 1.5
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    playsound entity.arrow.shoot master @a ~ ~ ~ 2 1.2

# 射撃
    summon marker ~ ~ ~ {Tags:["MonsterShot","PlyPierceArrow","Start"]}
    execute at @s positioned ~ ~1.65 ~ positioned ^ ^ ^1 run tp @e[type=marker,tag=PlyPierceArrow,tag=Start] ~ ~ ~ ~ ~
    scoreboard players operation @e[type=marker,tag=PlyPierceArrow,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid

# 終了
    tag @e[type=marker,tag=PlyPierceArrow,tag=Start] remove Start

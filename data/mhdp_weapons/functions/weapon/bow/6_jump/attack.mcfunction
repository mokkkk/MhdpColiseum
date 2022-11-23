#> mhdp_weapons:weapon/bow/6_jump/attack
#
# 弓：射撃 攻撃エフェクト
#

# 武器アニメーション
    function mhdp_weapons:weapon/bow/6_jump/animation_1

# 演出
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 1.5
    playsound item.crossbow.shoot master @a ~ ~ ~ 2 2
    playsound entity.arrow.shoot master @a ~ ~ ~ 2 1.2

# 射撃
    summon marker ~ ~ ~ {Tags:["MonsterShot","PlyArrow","Start","JumpShot"]}
    execute at @s positioned ~ ~1.65 ~ positioned ^ ^ ^1 run tp @e[type=marker,tag=PlyArrow,tag=Start] ~ ~ ~ ~ ~
    scoreboard players operation @e[type=marker,tag=PlyArrow,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    scoreboard players add @s MhdpWeaponCountBow 1

# 溜め段階タグ付与
    tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add WpnBowCharge4
    tag @e[type=marker,tag=PlyArrow,tag=Start,limit=1] add DrawAttack

# 跳ねる
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:35b,Duration:3,ShowParticles:0b}]}

# 終了
    tag @e[type=marker,tag=PlyArrow,tag=Start] remove Start

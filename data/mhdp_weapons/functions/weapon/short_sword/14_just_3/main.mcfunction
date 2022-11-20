#> mhdp_weapons:weapon/short_sword/14_just_3/main
#
# 片手剣：ジャストラッシュ３

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/14_just_3/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/14_just_3/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=18}] run function mhdp_weapons:weapon/short_sword/14_just_3/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=25}] run function mhdp_weapons:weapon/short_sword/9_jump/animation_3

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~2 ~1
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/short_sword/14_just_3/attack_0
    execute if entity @s[scores={MhdpWeaponTimer=4}] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s run tp @s ~ ~ ~ ~2 ~1
    execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=18}] run function mhdp_weapons:weapon/short_sword/14_just_3/attack_1

# ノックバック用に出していたMobを片づける
    execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=19}] run tp @e[tag=WpnSswordKnockback] ~ ~-1000 ~
    execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=19}] run kill @e[tag=WpnSswordKnockback]

# 移動速度低下
    execute if entity @s[scores={MhdpWeaponTimer=1..20}] run effect give @s slowness 1 5 true

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=40..}] run function mhdp_weapons:weapon/short_sword/14_just_3/end

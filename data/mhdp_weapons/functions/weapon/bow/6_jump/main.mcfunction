#> mhdp_weapons:weapon/bow/6_jump/main
#
# 弓：射撃

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 右クリック時，射撃
    execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=3..}] run function mhdp_weapons:weapon/bow/6_jump/animation_0
    execute if entity @s[tag=PlyUsingEyeEnd,scores={MhdpWeaponTimer=3..}] run function mhdp_weapons:weapon/bow/6_jump/attack

# 終了
    execute if entity @s[scores={MhdpWeaponCountBow=3..}] run function mhdp_weapons:weapon/bow/6_jump/end
    execute if entity @s[tag=!PlyJumpping] run function mhdp_weapons:weapon/bow/6_jump/end

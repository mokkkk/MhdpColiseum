#> mhdp_weapons:weapon/short_sword/16_upper/main
#
# 片手剣：ジャストラッシュ３

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# カウンター成功時
    execute if entity @s[tag=PlyDamaged,scores={MhdpWeaponTimer=1..10}] run function mhdp_weapons:weapon/short_sword/16_upper/counter

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/3_guard/animation
    execute if entity @s[scores={MhdpWeaponTimer=8..10}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=11..12}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_1
    execute if entity @s[scores={MhdpWeaponTimer=13..20}] run function mhdp_weapons:weapon/short_sword/13_just_2/animation_2
    execute if entity @s[scores={MhdpWeaponTimer=21}] run function mhdp_weapons:weapon/short_sword/99_reset/model

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=11}] run tp @s ~ ~ ~ ~ ~3
    execute if entity @s[scores={MhdpWeaponTimer=12}] run function mhdp_weapons:weapon/short_sword/16_upper/attack
    execute if entity @s[scores={MhdpWeaponTimer=13..15}] run tp @s ~ ~ ~ ~ ~-3
    execute if entity @s[scores={MhdpWeaponTimer=13}] run function mhdp_weapons:weapon/short_sword/2_dash_attack/remove_tag

# エフェクト付与
    execute if entity @s[scores={MhdpWeaponTimer=11}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:66b,Duration:3,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=1..20}] run effect give @s slowness 1 6 true

# 遷移
    # 右クリック時，フォールバッシュに移行
        execute if entity @s[tag=PlyUsingEyeStart,scores={MhdpWeaponTimer=21..}] run function mhdp_weapons:weapon/short_sword/16_upper/change_fall

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=40..}] run function mhdp_weapons:weapon/short_sword/16_upper/end

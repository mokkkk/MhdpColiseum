#> mhdp_weapons:weapon/great_sword/4_tackle/main
#
# 大剣：タックル

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    tag @s remove Target

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/4_tackle/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/great_sword/4_tackle/animation_1

# 移動
    execute if entity @s[scores={MhdpWeaponTimer=..4}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_weapons:weapon/great_sword/4_tackle/move_0
    execute if entity @s[scores={MhdpWeaponTimer=5..8}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_weapons:weapon/great_sword/4_tackle/move_1

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=2}] at @s run function mhdp_weapons:weapon/great_sword/4_tackle/attack

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:10b,Duration:16,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..3}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=16..}] run function mhdp_weapons:weapon/great_sword/4_tackle/end
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

# 遷移
    # 右クリック中の場合，溜めに移行
        execute if entity @s[tag=PlyUsingEyeCurrent,scores={MhdpWeaponTimer=9..}] run function mhdp_weapons:weapon/great_sword/4_tackle/change_charge

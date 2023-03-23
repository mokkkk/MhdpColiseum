#> mhdp_weapons:weapon/short_sword/7_step/main
#
# 片手剣：バックステップ

# 対象紐づけ
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s add Target
    execute if entity @s[scores={MhdpWeaponTimer=..8}] as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run tag @s remove Target

# タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/7_step/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=7}] run function mhdp_weapons:weapon/short_sword/7_step/animation_1

# 移動禁止
    execute if entity @s[scores={MhdpWeaponTimer=1..}] run effect give @s slowness 1 6 true
# 移動
    execute if entity @s[scores={MhdpWeaponTimer=1}] run tp @s ~ ~ ~ ~ ~5
    execute if entity @s[scores={MhdpWeaponTimer=..7}] rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_weapons:weapon/short_sword/7_step/move
    execute if entity @s[scores={MhdpWeaponTimer=8..10}] run tp @s ~ ~ ~ ~ ~-1
    execute if entity @s[scores={MhdpWeaponTimer=11}] run tp @s ~ ~ ~ ~ ~-2
# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..5}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..7}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 右クリック溜め
    execute if entity @s[tag=PlyUsingEyeCurrent,tag=!SklFocusLv1,tag=!SklFocusLv2,scores={MhdpWeaponTimer=5..72}] run scoreboard players add @s MhdpWeaponCharge 3
    # スキル：集中
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=SklFocusLv1,scores={MhdpWeaponTimer=5..72}] run scoreboard players add @s MhdpWeaponCharge 4
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=SklFocusLv2,scores={MhdpWeaponTimer=5..72}] run scoreboard players add @s MhdpWeaponCharge 5
    # 溜め演出
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!WpnSswordCharged,scores={MhdpWeaponTimer=5..72,MhdpWeaponCharge=45..}] run function mhdp_weapons:weapon/short_sword/7_step/charge

# 遷移
    # ジャンプ時，派生をキャンセル
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=2..}] run function mhdp_weapons:weapon/short_sword/7_step/end
    # 無操作時，突進斬りに移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=16..,MhdpWeaponCharge=..0}] run function mhdp_weapons:weapon/short_sword/7_step/change_dash
    # 右クリック時，ジャストラッシュに移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,scores={MhdpWeaponTimer=16..,MhdpWeaponCharge=1..44}] run function mhdp_weapons:weapon/short_sword/7_step/change_just
    # 右クリック長押し時，溜め斬りに移行
        execute if entity @s[tag=!PlyUsingEyeCurrent,tag=WpnSswordCharged,scores={MhdpWeaponTimer=16..}] run function mhdp_weapons:weapon/short_sword/7_step/change_charge_attack
        execute if entity @s[tag=WpnSswordCharged,scores={MhdpWeaponTimer=16..,MhdpWeaponCharge=180..}] run function mhdp_weapons:weapon/short_sword/7_step/change_charge_attack

# 移動終了
    execute if entity @s[scores={MhdpWeaponTimer=8}] run kill @e[type=marker,tag=SneakAvoidStand0,tag=Rotator]
    execute if entity @s[scores={MhdpWeaponTimer=..10}] run tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator

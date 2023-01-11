#> mhdp_weapons:weapon/great_sword/3_charge_attack/main
#
# 大剣：溜め斬り
#declare tag AttackHit ヒットストップ判定用

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# ヒットストップの長さ決定
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/hitstop

# 武器アニメーション
    # 空振り または溜め1以下
        execute if entity @s[tag=!AttackHit,scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0
        execute if entity @s[tag=!WpnGswordCharge2,scores={MhdpWeaponTimer=2}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0
    # ヒットストップ
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=1}] run tp @s @s
        execute if entity @s[tag=AttackHit,tag=HitStopNormal,scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0
        execute if entity @s[tag=AttackHit,tag=HitStopLong,scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0

# 移動禁止
    execute if entity @s[tag=!PlyJumpping,scores={MhdpWeaponTimer=1..8}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1..8,MhdpJump=1..}] run tp @s @s
    execute if entity @s[scores={MhdpWeaponTimer=1}] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:5b,Duration:4,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=8..30}] run effect give @s slowness 1 1 true

# 早めにステップ回避可能にする
    execute if entity @s[tag=!AttackHit,scores={MhdpWeaponTimer=8..}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_1

# 遷移
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=9..40}] run function mhdp_core:player/sneak/avoid/start_

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=41..}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/end

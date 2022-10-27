#> mhdp_weapons:weapon/great_sword/3_charge_attack/main
#
# 大剣：溜め斬り

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 移動禁止
    execute if entity @s[scores={MhdpWeaponTimer=1}] run effect give @s jump_boost 1 128 true
    execute if entity @s[scores={MhdpWeaponTimer=1}] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:5b,Duration:4,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=8..30}] run effect give @s slowness 1 4 true

# 早めにステップ回避可能にする
    execute if entity @s[scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation

# 遷移
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=9..40}] run function mhdp_core:player/sneak/avoid/start_

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=41..}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/end

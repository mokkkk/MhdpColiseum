#> mhdp_weapons:weapon/great_sword/8_edge/main
#
# 大剣：ハンティングエッジ

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 移動禁止
    effect give @s slowness 1 10 true

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/2_charge/animation
    execute if entity @s[scores={MhdpWeaponTimer=3}] run function mhdp_weapons:weapon/great_sword/8_edge/animation
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=15}] run function mhdp_weapons:weapon/great_sword/3_charge_attack/animation_1

# 攻撃
    execute if entity @s[scores={MhdpWeaponTimer=5}] run function mhdp_weapons:weapon/great_sword/8_edge/attack

# 遷移
    # ジャンプ時，ステップ回避に移行
        execute if entity @s[scores={MhdpJump=1..,MhdpWeaponTimer=16..44}] run function mhdp_core:player/sneak/avoid/start_
    # 攻撃ヒット時，溜めに移行
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=6..7}] run tp @s @s
        execute if entity @s[tag=AttackHit,scores={MhdpWeaponTimer=8}] run function mhdp_weapons:weapon/great_sword/8_edge/change_charge

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=45..}] run function mhdp_weapons:weapon/great_sword/8_edge/end

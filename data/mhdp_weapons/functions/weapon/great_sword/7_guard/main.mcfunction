#> mhdp_weapons:weapon/great_sword/7_guard/main
#
# 大剣：ガード

# タイマー増加
scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/great_sword/7_guard/animation

# 移動禁止
    effect give @s slowness 1 6 true

# 遷移
    # 右クリック時，斬り上げに移行
        execute if entity @s[tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/great_sword/7_guard/change_upper
    # スニークを解除したとき，終了
        execute if entity @s[tag=!PlySneakCurrent] run function mhdp_weapons:weapon/great_sword/7_guard/change_end
    # スタミナが尽きたとき，終了
        execute if entity @s[scores={MhdpStamina=..0}] run function mhdp_weapons:weapon/great_sword/7_guard/change_end
    # ジャンプ時，ステップ回避に移行
        # execute if entity @s[scores={MhdpJump=1..}] run function mhdp_core:player/sneak/avoid/start_
    
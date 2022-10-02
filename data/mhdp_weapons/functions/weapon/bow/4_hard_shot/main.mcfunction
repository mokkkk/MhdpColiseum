#> mhdp_weapons:weapon/bow/4_hard_shot/main
#
# 弓：射撃

# コンボ用タイマー
    scoreboard players add @s MhdpWeaponTimer 1

# 遷移
    # なし

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=31..}] run function mhdp_weapons:weapon/bow/4_hard_shot/end

#> mhdp_weapons:weapon/bow/2_charge/start_combo
#
# 弓：溜め開始(コンボ用)

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnBowCharge

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

say 溜め開始
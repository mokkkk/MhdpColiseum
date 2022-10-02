#> mhdp_weapons:weapon/bow/2_charge/start_combo_cstep
#
# 弓：溜め開始(コンボ用，チャージステップ)

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 5

# タグ更新
    tag @s add WpnBowCharge

# スニーク回避ロック開始
    tag @s add PlySneakAvoidLock

say 溜め開始
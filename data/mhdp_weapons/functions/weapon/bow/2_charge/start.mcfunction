#> mhdp_weapons:weapon/bow/2_charge/start
#
# 弓：溜め開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnBowCharge

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

say 溜め開始
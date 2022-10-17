#> mhdp_weapons:weapon/great_sword/2_charge/start
#
# 大剣：溜め開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordCharge

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

say 溜め開始
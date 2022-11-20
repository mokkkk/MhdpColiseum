#> mhdp_weapons:weapon/short_sword/10_fall/start
#
# 片手剣：フォールバッシュ開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword10Fall

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say フォールバッシュ
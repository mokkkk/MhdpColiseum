#> mhdp_weapons:weapon/short_sword/6_spin/start
#
# 片手剣：回転斬り開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword6Spin

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

# 無敵時間設定
    scoreboard players set @s MhdpTAvoid 10

say 回転斬り
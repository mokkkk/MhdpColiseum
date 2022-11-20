#> mhdp_weapons:weapon/short_sword/9_jump/start
#
# 片手剣：回転斬り開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword9Jump

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

# 無敵時間設定
    scoreboard players set @s MhdpTAvoid 10

say 駆け上がり斬り
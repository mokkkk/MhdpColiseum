#> mhdp_weapons:weapon/great_sword/5_upper/start
#
# 大剣：斬り上げ開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordUpper

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 斬り上げ
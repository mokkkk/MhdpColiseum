#> mhdp_weapons:weapon/short_sword/13_just_2/start
#
# 片手剣：ジャストラッシュ次へ

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword13Just2

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say ジャストラッシュ３
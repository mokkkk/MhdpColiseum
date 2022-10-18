#> mhdp_weapons:weapon/great_sword/6_sweep/start
#
# 大剣：薙ぎ払い開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordSweep

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 薙ぎ払い
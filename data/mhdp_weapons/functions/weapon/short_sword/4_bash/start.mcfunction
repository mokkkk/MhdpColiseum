#> mhdp_weapons:weapon/short_sword/4_bash/start
#
# 片手剣：盾攻撃１開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnSsword4SB1

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# ステップ回避ロック開始
    tag @s add PlySneakAvoidLock

# 演出
    playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

say 盾攻撃１
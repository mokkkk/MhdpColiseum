#> mhdp_weapons:sp_items/immovable/end
#
# 不動の装衣 終了処理

# クールタイム設定
    scoreboard players set @s MhdpTItmImmovableCooltime 1800
    # スキル：整備
        execute if entity @s[tag=SklToolSp] run scoreboard players set @s MhdpTItmImmovableCooltime 1500

# タグ解除
    tag @s remove ItmUseImmovable
    tag @s add ItmCoolImmovable

# 演出
    playsound item.armor.equip_netherite master @a ~ ~ ~ 1 0.5
    # 防具の見た目を元に戻す
        # ...

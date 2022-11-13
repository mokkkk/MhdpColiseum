#> mhdp_weapons:sp_items/immovable/end
#
# 不動の装衣 終了処理

# 通知
    execute if entity @s[tag=ItmUseImmovable] run tellraw @s {"text": "【不動の装衣の効果が切れた】"}

# クールタイム設定
    scoreboard players set @s MhdpTItmImmovableCooltime 3600

# タグ解除
    tag @s remove ItmUseImmovable
    tag @s add ItmCoolImmovable

# 演出
    playsound item.armor.equip_netherite master @a ~ ~ ~ 1 0.5
    # 防具の見た目を元に戻す
        # ...

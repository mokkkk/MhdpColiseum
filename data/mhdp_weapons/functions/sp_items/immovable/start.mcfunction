#> mhdp_weapons:sp_items/immovable/start
#
# 不動の装衣 使用開始処理

# タイマー設定
    scoreboard players set @s MhdpTItmImmovable 900

# タグ付与
    execute if entity @s[tag=!ItmCoolImmovable] run tag @s add ItmUseImmovable
    execute if entity @s[tag=ItmCoolImmovable] run tellraw @s {"text": "【クールタイムが終了していません】"}

# 演出
    playsound item.armor.equip_netherite master @a ~ ~ ~ 1 1
    # 防具の見た目を不動の装衣用に変える
        # ...

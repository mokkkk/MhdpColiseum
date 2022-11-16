#> mhdp_weapons:ui/item/immovable/
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# 通常時
    execute if entity @s[tag=!ItmUseImmovable,tag=!ItmCoolImmovable] run function mhdp_weapons:ui/item/immovable/normal

# 使用中
    execute if entity @s[tag=ItmUseImmovable] run function mhdp_weapons:ui/item/immovable/using

# クールタイム中
    execute if entity @s[tag=ItmCoolImmovable] run function mhdp_weapons:ui/item/immovable/cooltime

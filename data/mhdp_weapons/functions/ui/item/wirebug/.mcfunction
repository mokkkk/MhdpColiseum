#> mhdp_weapons:ui/item/wirebug/
#
# UI表示処理等 特殊装具ごとの特殊ゲージ
#

# 通常時
    execute if entity @s[tag=!ItmUseWirebug,tag=!ItmCoolWirebug] run function mhdp_weapons:ui/item/wirebug/normal

# 使用中
    execute if entity @s[tag=ItmUseWirebug] run function mhdp_weapons:ui/item/wirebug/using

# クールタイム中
    execute if entity @s[tag=ItmCoolWirebug] run function mhdp_weapons:ui/item/wirebug/cooltime

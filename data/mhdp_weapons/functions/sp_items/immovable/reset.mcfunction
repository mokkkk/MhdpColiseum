#> mhdp_weapons:sp_items/immovable/reset
#
# 不動の装衣 リセット処理

# 使用中の場合はクールタイム開始
    execute if entity @s[tag=ItmUseImmovable] run function mhdp_weapons:sp_items/immovable/end

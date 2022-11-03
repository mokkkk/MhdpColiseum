#> mhdp_core:player/item/carrot_on_a_stick/
#
# アイテム用メイン処理 いろいろ
#
#declare tag PlyUsingCoasItem プレイヤーがCoas式アイテムを使用中

# アイテム使用検知・分岐
    execute if entity @s[tag=PlyUsedCoas] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpItem:1b} run function mhdp_core:player/item/carrot_on_a_stick/switch

# アイテム使用中
    execute if entity @s[tag=PlyUsingCoasItem] run function mhdp_core:player/item/carrot_on_a_stick/using

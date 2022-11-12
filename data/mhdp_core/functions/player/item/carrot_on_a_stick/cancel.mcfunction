#> mhdp_core:player/item/carrot_on_a_stick/cancel
#
# アイテム用メイン処理 いろいろ 使用中止

# 分岐
    execute if entity @s[scores={MhdpPlayerUsingItemId=101}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/cancel

# IDリセット
    scoreboard players set @s MhdpPlayerUsingItemId 0

# タグリセット
    tag @s remove PlyUsingCoasItem
    tag @s remove ItmCoasCancel

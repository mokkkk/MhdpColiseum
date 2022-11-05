#> mhdp_core:player/item/carrot_on_a_stick/cancel
#
# アイテム用メイン処理 いろいろ 使用中止

# IDリセット
    scoreboard players set @s MhdpPlayerUsingItemId 0

# エフェクトリセット
    effect clear @s slowness

# タグリセット
    tag @s remove PlyUsingCoasItem
    tag @s remove ItmCoasCancel

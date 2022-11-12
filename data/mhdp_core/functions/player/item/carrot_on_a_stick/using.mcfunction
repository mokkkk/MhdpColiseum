#> mhdp_core:player/item/carrot_on_a_stick/using
#
# アイテム用メイン処理 いろいろ 使用中
#declare tag ItmCoasCancel ニンジン棒アイテム使用中断

# タイマー増加
    scoreboard players add @s MhdpTUsingCoasItem 1

# 使用中断検知
    function mhdp_core:player/item/carrot_on_a_stick/check

# アイテム使用中断
    execute if entity @s[tag=ItmCoasCancel] run function mhdp_core:player/item/carrot_on_a_stick/cancel

# 分岐
    execute if entity @s[scores={MhdpPlayerUsingItemId=101}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/using

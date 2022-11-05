#> mhdp_core:player/item/carrot_on_a_stick/whetstone/effect
#
# アイテム用メイン処理 
# １０１：砥石

# エフェクト表示
    execute positioned ~ ~1.4 ~ run particle crit ^ ^ ^0.3 0.1 0.1 0.1 1 5
    playsound block.grindstone.use master @s ~ ~ ~ 1 2
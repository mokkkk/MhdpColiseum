#> mhdp_core:player/item/potion/heal_great/move
#
# アイテム用メイン処理 
# ２：回復薬グレート 補充

# 処理用marker召喚
    summon marker ~ ~ ~ {Tags:["ItmSchHealG","Start"]}
    scoreboard players operation @e[type=marker,tag=ItmSchHealG,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    tag @e[type=marker,tag=ItmSchHealG,tag=Start,limit=1] remove Start

# schedule実行
    schedule function mhdp_core:player/item/potion/heal_great/move_sc 2t append

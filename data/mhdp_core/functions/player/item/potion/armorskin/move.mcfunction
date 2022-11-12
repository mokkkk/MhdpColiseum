#> mhdp_core:player/item/potion/armorskin/move
#
# アイテム用メイン処理 
# ４：硬化薬 補充

# 処理用marker召喚
    summon marker ~ ~ ~ {Tags:["ItmSchArmor","Start"]}
    scoreboard players operation @e[type=marker,tag=ItmSchArmor,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    tag @e[type=marker,tag=ItmSchArmor,tag=Start,limit=1] remove Start

# schedule実行
    schedule function mhdp_core:player/item/potion/armorskin/move_sc 2t append

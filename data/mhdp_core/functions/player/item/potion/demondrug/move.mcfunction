#> mhdp_core:player/item/potion/demondrug/move
#
# アイテム用メイン処理 
# ３：鬼人薬 補充

# 処理用marker召喚
    summon marker ~ ~ ~ {Tags:["ItmSchDemon","Start"]}
    scoreboard players operation @e[type=marker,tag=ItmSchDemon,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    tag @e[type=marker,tag=ItmSchDemon,tag=Start,limit=1] remove Start

# schedule実行
    schedule function mhdp_core:player/item/potion/demondrug/move_sc 2t append

#> mhdp_core:player/item/potion/heal_normal/move
#
# アイテム用メイン処理 
# １：回復薬 補充

# 処理用marker召喚
    summon marker ~ ~ ~ {Tags:["ItmSchHeal","Start"]}
    scoreboard players operation @e[type=marker,tag=ItmSchHeal,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    tag @e[type=marker,tag=ItmSchHeal,tag=Start,limit=1] remove Start

# schedule実行
    schedule function mhdp_core:player/item/potion/heal_normal/move_sc 2t append

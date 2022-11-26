#> mhdp_core:player/item/food/might_seed/move
#
# アイテム用メイン処理 
# ５１：怪力の種 補充

# アイテムを一時的に消去
    item replace entity @s weapon.mainhand with air

# 処理用marker召喚
    summon marker ~ ~ ~ {Tags:["ItmSchMight","Start"]}
    scoreboard players operation @e[type=marker,tag=ItmSchMight,tag=Start,limit=1] MhdpPlayerUid = @s MhdpPlayerUid
    scoreboard players operation @e[type=marker,tag=ItmSchMight,tag=Start,limit=1] MhdpCore = #mhdp_temp_count MhdpCore
    tag @e[type=marker,tag=ItmSchMight,tag=Start,limit=1] remove Start

# schedule実行
    schedule function mhdp_core:player/item/food/might_seed/move_sc 2t append

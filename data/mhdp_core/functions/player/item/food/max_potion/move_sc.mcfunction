#> mhdp_core:player/item/food/max_potion/move_sc
#
# アイテム用メイン処理 
# ５３：秘薬 補充

# プレイヤー特定
    scoreboard players operation #mhdp_temp_uid MhdpCore = @e[type=marker,tag=ItmSchMpotion,limit=1,sort=arbitrary] MhdpPlayerUid
    scoreboard players operation #mhdp_temp_count MhdpCore = @e[type=marker,tag=ItmSchMpotion,limit=1,sort=arbitrary] MhdpCore
    kill @e[type=marker,tag=ItmSchMpotion,limit=1,sort=arbitrary]
    execute as @a if score @s MhdpPlayerUid = #mhdp_temp_uid MhdpCore run tag @s add Target

# メインハンド置き換え
    execute as @a[tag=Target] run function mhdp_core:player/item/food/max_potion/move_pl

# 終了
    tag @a[tag=Target] remove Target
    scoreboard players reset #mhdp_temp_uid MhdpCore
    scoreboard players reset #mhdp_temp_count MhdpCore

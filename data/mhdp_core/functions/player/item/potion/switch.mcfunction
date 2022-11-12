#> mhdp_core:player/item/potion/switch
#
# アイテム用メイン処理 薬 分岐

# ID取得
    execute store result score #mhdp_temp_id MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag.MhdpItemId

# １：回復薬
    execute if score #mhdp_temp_id MhdpCore matches 1 run function mhdp_core:player/item/potion/heal_normal/

# ２：回復薬グレート
    execute if score #mhdp_temp_id MhdpCore matches 2 run function mhdp_core:player/item/potion/heal_great/

# ３：鬼人薬
    execute if score #mhdp_temp_id MhdpCore matches 3 run function mhdp_core:player/item/potion/demondrug/

# ４：硬化薬
    execute if score #mhdp_temp_id MhdpCore matches 4 run function mhdp_core:player/item/potion/armorskin/

# 終了
    scoreboard players reset #mhdp_temp_id MhdpCore
    scoreboard players set @s MhdpTUsingItem 0

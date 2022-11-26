#> mhdp_core:player/item/food/max_potion/move_pl
#
# アイテム用メイン処理 
# ５３：秘薬 補充

# データ取得準備
    function oh_my_dat:please

# メインハンドが空じゃない
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagA

# メインハンドが空じゃない場合，メインハンドのアイテムを保存する
    execute if entity @s[tag=FlagA] run function mhdp_core:player/item/core/main_store
# メインハンド置き換え
    item replace entity @s weapon.mainhand with cookie{display:{Name:'{"text":"秘薬","color":"green","italic":false}',Lore:['{"text":"[持ち込み制限：5個]","italic":false}','{"text":"--------------------","color":"dark_gray"}','{"text":"体力を完全に回復する．","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:3,MhdpItemId:53,CustomModelData:12343,HideFlags:34}
    item modify entity @s weapon.mainhand mhdp_core:item/food_count

# オフハンドのアイテムを回収する
    execute if entity @s[tag=StoreMainItem] run function mhdp_core:player/item/core/main_give

# 終了
    tag @s[tag=FlagA] remove FlagA
    tag @s[tag=StoreMainItem] remove StoreMainItem

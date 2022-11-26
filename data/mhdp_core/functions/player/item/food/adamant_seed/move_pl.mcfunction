#> mhdp_core:player/item/food/adamant_seed/move_pl
#
# アイテム用メイン処理 
# ５２：硬化の種 補充

# データ取得準備
    function oh_my_dat:please

# メインハンドが空じゃない
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagA

# メインハンドが空じゃない場合，メインハンドのアイテムを保存する
    execute if entity @s[tag=FlagA] run function mhdp_core:player/item/core/main_store
# メインハンド置き換え
    item replace entity @s weapon.mainhand with cookie{display:{Name:'{"text":"硬化の種","color":"green","italic":false}',Lore:['{"text":"[持ち込み制限：10個]","italic":false}','{"text":"--------------------","color":"dark_gray"}','{"text":"食べると皮膚が硬化する種．","color":"white","italic":false}','{"text":"一時的に防御力が上昇する．","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:3,MhdpItemId:52,CustomModelData:12342,HideFlags:34}
    item modify entity @s weapon.mainhand mhdp_core:item/food_count

# オフハンドのアイテムを回収する
    execute if entity @s[tag=StoreMainItem] run function mhdp_core:player/item/core/main_give

# 終了
    tag @s[tag=FlagA] remove FlagA
    tag @s[tag=StoreMainItem] remove StoreMainItem

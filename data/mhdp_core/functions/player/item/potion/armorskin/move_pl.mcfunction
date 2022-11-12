#> mhdp_core:player/item/potion/armorskin/move_pl
#
# アイテム用メイン処理 
# ４：硬化薬 補充

# データ取得準備
    function oh_my_dat:please

# メインハンドが空じゃない
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagA

# メインハンドが空じゃない場合，メインハンドのアイテムを保存する
    execute if entity @s[tag=FlagA] run function mhdp_core:player/item/core/main_store
# メインハンド置き換え
    item replace entity @s weapon.mainhand with potion{display:{Name:'{"text":"硬化薬","color":"green","italic":false}',Lore:['{"text":"--------------------","color":"dark_gray"}','{"text":"防御力が上昇する薬．","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:1,MhdpItemId:4,CustomModelData:12341,HideFlags:34,CustomPotionColor:13926144}
# オフハンドのアイテムを回収する
    execute if entity @s[tag=StoreMainItem] run function mhdp_core:player/item/core/main_give

# 終了
    tag @s[tag=FlagA] remove FlagA
    tag @s[tag=StoreMainItem] remove StoreMainItem

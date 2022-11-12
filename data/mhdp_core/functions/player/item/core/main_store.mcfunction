#> mhdp_core:player/item/core/main_store
#
# アイテム処理用 メインハンドアイテムの保存

# メインハンドアイテム保持
    data modify storage mhdp_core:temp Temp2 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand

# 終了
    tag @s add StoreMainItem

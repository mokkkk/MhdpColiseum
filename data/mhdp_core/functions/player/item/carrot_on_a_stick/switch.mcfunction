#> mhdp_core:player/item/carrot_on_a_stick/switch
#
# アイテム用メイン処理 いろいろ 分岐

# ID取得
    execute store result score #mhdp_temp_id MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag.MhdpItemId

# 101：研石
    # execute if score #mhdp_temp_id MhdpCore matches 101 run function mhdp_core:player/item/potion/heal_normal/

# 終了
    scoreboard players reset #mhdp_temp_id MhdpCore

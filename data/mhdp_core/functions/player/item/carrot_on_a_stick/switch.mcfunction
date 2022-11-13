#> mhdp_core:player/item/carrot_on_a_stick/switch
#
# アイテム用メイン処理 いろいろ 分岐

# タイマーリセット
    scoreboard players set @s MhdpTUsingCoasItem 0
    
# ID取得
    execute store result score #mhdp_temp_id MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag.MhdpItemId

# 101：研石
    execute if score #mhdp_temp_id MhdpCore matches 101 run function mhdp_core:player/item/carrot_on_a_stick/whetstone/start

# 1001：不動の装衣
    execute if score #mhdp_temp_id MhdpCore matches 1001 run function mhdp_weapons:sp_items/immovable/start

# 終了
    scoreboard players reset #mhdp_temp_id MhdpCore

#> mhdp_core:phase/0_village/receive_quest/normal_get_id
#
# クエスト受注時実行処理（ノーマル） クエストID取得処理

# 末尾データのbuyを取得し，購入されたかどうか確認する
    execute store result score #mhdp_temp_uses MhdpCore run data get storage mhdp_core:temp Temp.Trade[-1].uses

# 見つかった場合
    execute if score #mhdp_temp_uses MhdpCore matches 1.. run function mhdp_core:phase/0_village/receive_quest/normal_set_id

# 末尾データ削除
    data remove storage mhdp_core:temp Temp.Trade[-1]

# まだデータがある場合，処理を繰り返す
    execute if data storage mhdp_core:temp Temp.Trade[0] run function mhdp_core:phase/0_village/receive_quest/normal_get_id

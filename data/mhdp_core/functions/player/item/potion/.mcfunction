#> mhdp_core:player/item/potion/
#
# アイテム用メイン処理 薬

# アイテム使用検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingPotionCurrent,tag=AdvUsingItemPotion] run tag @s add PlyUsingPotionCurrent
    # 使用中にメインハンドのアイテムが入れ替わった場合，未使用とみなす
        execute if entity @s[tag=PlyUsingPotionCurrent] store success score #mhdp_temp_success MhdpCore run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.PreMainHand set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand
        execute if entity @s[tag=PlyUsingPotionCurrent] store result score #mhdp_slot_temp MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.Slot
        execute if entity @s[scores={MhdpTUsingItem=3..}] if score #mhdp_temp_success MhdpCore matches 1.. run tag @s add PlyUsingPotionEnd
    # 使用→未使用
        execute if entity @s[tag=PlyUsingPotionCurrent,tag=!AdvUsingItemPotion] run tag @s add PlyUsingPotionEnd
        execute if entity @s[tag=PlyUsingPotionEnd] run tag @s remove PlyUsingPotionCurrent

# 使用中はスコアを増やす
    execute if entity @s[tag=PlyUsingPotionCurrent] run scoreboard players add @s MhdpTUsingItem 1
    # スコア一定以上になったらコマンド実行
        # 通常
            execute if entity @s[tag=PlyUsingPotionCurrent,scores={MhdpTUsingItem=30..}] run say use item
        # スキル：早食い
            execute if entity @s[tag=PlyUsingPotionCurrent,tag=SklFastEating,scores={MhdpTUsingItem=10..}] run say use item

# 未使用時はスコアをリセットする
    execute if entity @s[tag=PlyUsingPotionEnd] run scoreboard players set @s MhdpTUsingItem 0

# 終了
    execute if entity @s[tag=PlyUsingPotionEnd] run tag @s remove PlyUsingPotionEnd

#> mhdp_core:player/item/potion/
#
# アイテム用メイン処理 薬

# アイテム使用検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingPotionCurrent,tag=AdvUsingItemPotion] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpItem:1b} run tag @s add PlyUsingPotionCurrent
    # 使用→未使用
        execute if entity @s[tag=PlyUsingPotionCurrent,tag=!AdvUsingItemPotion] run tag @s add PlyUsingPotionEnd
        execute if entity @s[tag=PlyUsingPotionEnd] run tag @s remove PlyUsingPotionCurrent

# 使用中はスコアを増やす
    execute if entity @s[tag=PlyUsingPotionCurrent] run scoreboard players add @s MhdpTUsingItem 1
    # スコア一定以上になったらコマンド実行
        # 通常
            execute if entity @s[tag=PlyUsingPotionCurrent,scores={MhdpTUsingItem=30..}] run function mhdp_core:player/item/potion/switch
        # スキル：早食い
            execute if entity @s[tag=PlyUsingPotionCurrent,tag=SklFastEating,scores={MhdpTUsingItem=15..}] run function mhdp_core:player/item/potion/switch

# 未使用時はスコアをリセットする
    execute if entity @s[tag=PlyUsingPotionEnd] run scoreboard players set @s MhdpTUsingItem 0

# 終了
    execute if entity @s[tag=PlyUsingPotionEnd] run tag @s remove PlyUsingPotionEnd


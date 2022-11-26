#> mhdp_core:player/item/food/
#
# アイテム用メイン処理 食べ物

# アイテム使用検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingFoodCurrent,tag=AdvUsingItemFood] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpItem:1b} run tag @s add PlyUsingFoodCurrent
    # 使用→未使用
        execute if entity @s[tag=PlyUsingFoodCurrent,tag=!AdvUsingItemFood] run tag @s add PlyUsingFoodEnd
        execute if entity @s[tag=PlyUsingFoodEnd] run tag @s remove PlyUsingFoodCurrent

# 使用中はスコアを増やす
    execute if entity @s[tag=PlyUsingFoodCurrent] run scoreboard players add @s MhdpTUsingItem 1
    # スコア一定以上になったらコマンド実行
        # 通常
            execute if entity @s[tag=PlyUsingFoodCurrent,scores={MhdpTUsingItem=15..}] run function mhdp_core:player/item/food/switch
        # スキル：早食い
            execute if entity @s[tag=PlyUsingFoodCurrent,tag=SklFastEating,scores={MhdpTUsingItem=8..}] run function mhdp_core:player/item/food/switch

# 未使用時はスコアをリセットする
    execute if entity @s[tag=PlyUsingFoodEnd] run scoreboard players set @s MhdpTUsingItem 0

# 終了
    execute if entity @s[tag=PlyUsingFoodEnd] run tag @s remove PlyUsingFoodEnd

# タイマー減算
    function mhdp_core:player/item/food/timer

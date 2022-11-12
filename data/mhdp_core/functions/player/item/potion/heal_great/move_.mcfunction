#> mhdp_core:player/item/potion/heal_normal/move_sc
#
# アイテム用メイン処理 
# １：回復薬 補充

# プレイヤー特定
    scoreboard players operation #mhdp_temp_uid MhdpCore = @e[type=marker,tag=ItmSchHeal,limit=1,sort=arbitrary] MhdpPlayerUid
    kill @e[type=marker,tag=ItmSchHeal,limit=1,sort=arbitrary]
    execute as @a if score @s MhdpPlayerUid = #mhdp_temp_uid MhdpCore run tag @s add Target

# メインハンド置き換え
    item replace entity @a[tag=Target] weapon.mainhand with potion{display:{Name:'{"text":"回復薬","color":"green","italic":false}',Lore:['{"text":"--------------------","color":"dark_gray"}','{"text":"体力を少量回復する薬．","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:1,MhdpItemId:1,CustomModelData:12341,HideFlags:34,CustomPotionColor:54272}

# 終了
    tag @a[tag=Target] remove Target
    scoreboard players reset #mhdp_temp_uid MhdpCore

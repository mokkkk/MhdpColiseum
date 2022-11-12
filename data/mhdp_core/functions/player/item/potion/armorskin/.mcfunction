#> mhdp_core:player/item/potion/armorskin/
#
# アイテム用メイン処理 
# ４：硬化薬
#declare tag ItmArmorskin 硬化薬使用中

# アイテム消去
    item replace entity @s weapon.mainhand with air
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # 防御力上昇タグ付与
        tag @s add ItmArmorskin

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

# アイテム補充
    execute store result score #mhdp_temp_count MhdpCore run clear @s potion{MhdpItem:1b,MhdpItemId:4} 1
    execute if score #mhdp_temp_count MhdpCore matches 1.. run function mhdp_core:player/item/potion/armorskin/move
    scoreboard players reset #mhdp_temp_count MhdpCore

say 使用
#> mhdp_core:player/item/potion/heal_great/
#
# アイテム用メイン処理 
# ２：回復薬グレート

# アイテム消去
    item replace entity @s weapon.mainhand with air
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # HPを8回復
        summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:10,Amplifier:5b,Duration:16,ShowParticles:0b}]}

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

# アイテム補充
    execute store result score #mhdp_temp_count MhdpCore run clear @s potion{MhdpItem:1b,MhdpItemId:2} 1
    execute if score #mhdp_temp_count MhdpCore matches 1.. run function mhdp_core:player/item/potion/heal_great/move
    scoreboard players reset #mhdp_temp_count MhdpCore

say 使用
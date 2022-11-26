#> mhdp_core:player/item/food/max_potion/
#
# アイテム用メイン処理 
# ５３：秘薬

# アイテム消去
    item modify entity @s weapon.mainhand mhdp_core:item/food_dec
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # HPを完全回復
        summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:10,Amplifier:5b,Duration:40,ShowParticles:0b}]}

# アイテム補充
    execute store result score #mhdp_temp_count MhdpCore run clear @s cookie{MhdpItem:1b,MhdpItemId:53} 0
    execute if score #mhdp_temp_count MhdpCore matches 1.. run function mhdp_core:player/item/food/max_potion/move
    scoreboard players reset #mhdp_temp_count MhdpCore

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

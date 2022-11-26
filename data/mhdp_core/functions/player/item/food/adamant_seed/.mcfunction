#> mhdp_core:player/item/food/adamant_seed/
#
# アイテム用メイン処理 
# ５２：硬化の種
#declare tag ItmAdamantSeed 怪力の種使用中

# アイテム消去
    item modify entity @s weapon.mainhand mhdp_core:item/food_dec
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand set value {}

# 効果発動
    # 攻撃力上昇タグ付与
        tag @s add ItmAdamantSeed
        scoreboard players set @s MhdpItmTAdamantSeed 3600

# アイテム補充
    execute store result score #mhdp_temp_count MhdpCore run clear @s cookie{MhdpItem:1b,MhdpItemId:52} 0
    execute if score #mhdp_temp_count MhdpCore matches 1.. run function mhdp_core:player/item/food/adamant_seed/move
    scoreboard players reset #mhdp_temp_count MhdpCore

# 演出
    playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

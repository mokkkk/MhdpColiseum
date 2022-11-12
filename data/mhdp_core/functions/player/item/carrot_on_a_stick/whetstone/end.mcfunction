#> mhdp_core:player/item/carrot_on_a_stick/whetstone/end
#
# アイテム用メイン処理 
# １０１：砥石

# 斬れ味更新
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_core:player/item/carrot_on_a_stick/whetstone/sharpness

# 演出
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2

# キャンセル
    tag @s add ItmCoasCancel
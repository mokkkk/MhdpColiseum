#> mhdp_core:player/item/carrot_on_a_stick/whetstone/start
#
# アイテム用メイン処理 
# １０１：砥石

# ID決定
    execute if entity @s[tag=!PlyWpnBow] run scoreboard players set @s MhdpPlayerUsingItemId 101

# タグ追加
    execute if entity @s[tag=!PlyWpnBow] run tag @s add PlyUsingCoasItem

# オフハンド武器のモデル変更
    execute if entity @s[tag=!PlyWpnBow] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_core:player/item/carrot_on_a_stick/whetstone/start_model

#> mhdp_core:player/item/carrot_on_a_stick/whetstone/cancel
#
# アイテム用メイン処理 
# １０１：砥石

# エフェクトリセット
    effect clear @s slowness

# オフハンド武器のモデル変更
    execute if entity @s[tag=!PlyWpnBow] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_core:player/item/carrot_on_a_stick/whetstone/cancel_model

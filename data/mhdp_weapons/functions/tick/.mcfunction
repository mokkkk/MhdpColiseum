#> mhdp_weapons:tick/
#
# 毎tick実行される処理

# アイテムデータ取得準備
    function oh_my_dat:please

# 武器を2本持っている場合（インベントリクリックによる増殖対策）
    execute store result score #mhdp_temp_count MhdpCore run clear @s ender_eye{MhdpWeapon:1b} 0
    execute if score #mhdp_temp_count MhdpCore matches 2.. run function mhdp_weapons:core/reset/count
    scoreboard players reset #mhdp_temp_count

# 武器を投げ捨てた
    execute if entity @s[tag=PlyDroppedEnderEye] run function mhdp_weapons:core/drop/

# 抜刀：inventory_changed達成時のみ確認
    execute if entity @s[tag=!PlyWeaponDrawing,advancements={mhdp_core:player/inventory_changed_main=true}] run function mhdp_weapons:core/draw/

# 納刀
    execute if entity @s[tag=PlyWeaponDrawing,advancements={mhdp_core:player/inventory_changed_off=true}] run function mhdp_weapons:core/sheathe/

# 強制納刀（武器がメインハンドにない）：1tick後に実行
    execute if entity @s[tag=PlyWeaponDrawing] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run function mhdp_weapons:core/sheathe/force

# 非抜刀中，オフハンド監視

# エンダーアイ使用
    execute if entity @s[tag=PlyUsingEyeStart] run say エンダーアイ使用開始
    execute if entity @s[tag=PlyUsingEyeEnd] run say エンダーアイ使用終了

# 終了
    advancement revoke @s only mhdp_core:player/inventory_changed_main
    advancement revoke @s only mhdp_core:player/inventory_changed_off

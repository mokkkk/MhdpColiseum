#> mhdp_weapons:tick/
#
# 毎tick実行される処理

# アイテムデータ取得準備
    function oh_my_dat:please

# 抜刀：inventory_changed達成時のみ確認
    execute if entity @s[advancements={mhdp_core:player/inventory_changed_main=true}] run function mhdp_weapons:core/draw

# 納刀

# 強制納刀

# エンダーアイ使用
    execute if entity @s[tag=PlyUsingEyeStart] run say エンダーアイ使用開始
    execute if entity @s[tag=PlyUsingEyeEnd] run say エンダーアイ使用終了

# 終了
    advancement revoke @s only mhdp_core:player/inventory_changed_main

#> mhdp_core:phase/0_village/player/armor/
#
# プレイヤー装備中の防具データを取得

# データ取得準備
    function oh_my_dat:please

# 装備更新有無の確認
    function mhdp_core:phase/0_village/player/armor/check

# 取得
    execute if entity @s[tag=Changed] run function mhdp_core:phase/0_village/player/armor/get

# 終了
    tag @s remove Changed
    tag @s remove AdvInventoryChangedArmor

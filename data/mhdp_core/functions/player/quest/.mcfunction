#> mhdp_core:player/quest/
#
# クエスト開始中処理

# MhdpWeapons処理
    function mhdp_weapons:tick/

# ジャンプ時処理
    execute if entity @s[scores={MhdpJump=1..}] run function mhdp_core:player/jump/

# 属性やられ処理
    function mhdp_core:player/blight/

# アイテム処理
    function mhdp_core:player/item/

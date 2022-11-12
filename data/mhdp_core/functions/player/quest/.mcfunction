#> mhdp_core:player/quest/
#
# クエスト開始中処理

# MhdpWeapons処理
    function mhdp_weapons:tick/

# アイテム処理
    function mhdp_core:player/item/

# ジャンプ時処理
    execute if entity @s[scores={MhdpJump=1..}] run function mhdp_core:player/jump/

# 属性やられ処理
    function mhdp_core:player/blight/

# 移動回避処理
    execute if entity @s[tag=!PlySneakAvoidLock,tag=PlySneakAvoidFunc] run function mhdp_core:player/sneak/avoid/main

# ノックバック処理実行
    execute if entity @s[tag=MdhpKnockback] at @s facing entity @e[type=marker,tag=MhdpKnockbackPos] feet rotated ~ 0 run function mhdp_core:player/damage/knockback/

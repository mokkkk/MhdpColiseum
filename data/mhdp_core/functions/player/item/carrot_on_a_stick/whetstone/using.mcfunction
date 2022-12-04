#> mhdp_core:player/item/carrot_on_a_stick/whetstone/using
#
# アイテム用メイン処理 
# １０１：砥石

# 移動禁止
    effect give @s slowness 1 3 true

# 一定時間ごとにエフェクト表示
    execute if entity @s[scores={MhdpTUsingCoasItem=20}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/effect
    execute if entity @s[scores={MhdpTUsingCoasItem=40}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/effect
    execute if entity @s[scores={MhdpTUsingCoasItem=60}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/effect

# 効果発動
    execute if entity @s[scores={MhdpTUsingCoasItem=80..}] run function mhdp_core:player/item/carrot_on_a_stick/whetstone/end

# ジャンプ時，アイテム使用をキャンセルしてステップ回避に移行
    execute if entity @s[scores={MhdpJump=1..}] run function mhdp_core:player/sneak/avoid/start

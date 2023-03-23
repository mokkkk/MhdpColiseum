#> mhdp_core:vfx/gsword/slash_charge/
#
# 大剣 溜め斬りエフェクト表示 tick処理

# タイマー増加
    scoreboard players add @s MhdpCore 2
# 移動
    tp @s ^ ^-0.5 ^

# タイマーの値をCustomNameに設定
    loot replace block 0 0 0 container.0 loot mhdp_core:vfx/slash_gsword_charge
    data modify entity @s CustomName set from block 0 0 0 Items[0].tag.display.Name

# 終了
    execute if score @s MhdpCore matches 7.. run kill @s

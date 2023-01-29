#> mhdp_core:vfx/crit/
#
# 会心エフェクト表示 tick処理

# タイマー増加
    scoreboard players add @s MhdpCore 1

# タイマーの値をCustomNameに設定
    loot replace block 0 0 0 container.0 loot mhdp_core:vfx/crit
    data modify entity @s CustomName set from block 0 0 0 Items[0].tag.display.Name

# 終了
    execute if score @s MhdpCore matches 7.. run kill @s

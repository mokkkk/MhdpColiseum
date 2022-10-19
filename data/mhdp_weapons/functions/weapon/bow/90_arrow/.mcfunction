#> mhdp_weapons:weapon/bow/90_arrow/
#
# 放たれた矢の処理
#

# タイマー増加
    scoreboard players add @s MhdpCore 1

# 前進・パーティクル・ヒット判定
    function mhdp_weapons:weapon/bow/90_arrow/move
    execute at @s run function mhdp_weapons:weapon/bow/90_arrow/move
    execute at @s run function mhdp_weapons:weapon/bow/90_arrow/move

# 時間で削除
    execute if entity @s[scores={MhdpCore=20..}] run kill @s

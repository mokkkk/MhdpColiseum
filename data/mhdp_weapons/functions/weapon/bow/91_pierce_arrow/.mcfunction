#> mhdp_weapons:weapon/bow/91_pierce_arrow/
#
# 放たれた矢の処理
#

# タイマー増加
    scoreboard players add @s MhdpCore 1

# 前進・パーティクル・ヒット判定
    function mhdp_weapons:weapon/bow/91_pierce_arrow/move
    execute if entity @s[tag=!Attacked] at @s run function mhdp_weapons:weapon/bow/91_pierce_arrow/move
    execute if entity @s[tag=!Attacked] at @s run function mhdp_weapons:weapon/bow/91_pierce_arrow/move
    tag @s remove Attacked

# 時間で削除
    execute if entity @s[scores={MhdpCore=50..}] run kill @s
    execute if entity @s[scores={MhdpWeaponCountBow=120..}] run kill @s

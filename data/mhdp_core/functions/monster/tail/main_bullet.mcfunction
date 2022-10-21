#> mhdp_core:monster/tail/main_bullet
#
# モンスターの尻尾部位破壊時の演出用

scoreboard players add @s AsaMatrix 1

execute if entity @s[scores={AsaMatrix=100..}] run particle poof ~ ~1.4 ~ 0.5 0.5 0.5 0.2 10
execute if entity @s[scores={AsaMatrix=100..}] run kill @s

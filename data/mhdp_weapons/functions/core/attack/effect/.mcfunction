#> mhdp_weapons:core/attack/effect/
#
# 攻撃時処理 ヒットエフェクト

# 流血
    execute if score #mhdp_temp_def MhdpCore matches ..44 run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 1 15
    execute if score #mhdp_temp_def MhdpCore matches 45.. run particle block red_wool ~ ~ ~ 0.3 0.3 0.3 1 30

# 会心
    execute if entity @s[tag=Critical] run function mhdp_weapons:core/attack/effect/crit

# 属性
    execute if score #mhdp_temp_element_type MhdpCore matches 1 at @s positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/fire
    execute if score #mhdp_temp_element_type MhdpCore matches 2 at @s positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/water
    execute if score #mhdp_temp_element_type MhdpCore matches 3 at @s positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/thunder
    execute if score #mhdp_temp_element_type MhdpCore matches 4 at @s positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/ice
    execute if score #mhdp_temp_element_type MhdpCore matches 5 at @s positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/dragon

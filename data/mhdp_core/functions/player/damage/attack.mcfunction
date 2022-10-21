#> mhdp_core:player/damage/attack
#
# ダメージを受けたときに走らせる処理
#declare storage mhdp:

# プレイヤー
    execute if entity @s[type=player] run function mhdp_core:player/damage/player
# 非プレイヤー
    execute if entity @s[type=!player] run function mhdp_core:player/damage/not_player

# 終了
    scoreboard players reset #mhdp_temp_poison_time
    scoreboard players reset #mhdp_temp_poison_lv
    scoreboard players reset #mhdp_attack_damage
    scoreboard players reset $mhdp_epf
    data remove storage score_damage: Argument
    data remove storage mhdp_core:temp Temp

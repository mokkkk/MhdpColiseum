#> asa_animator:zinogre/kill
#
# 火竜 消去処理

# パーツ消去
    kill @e[type=armor_stand,tag=ZinogreRoot]
    kill @e[type=armor_stand,tag=ZinogreParts]

## スコアホルダー解放
# 部位耐久値
    scoreboard players reset #mhdp_zinogre_head_damage_max
    scoreboard players reset #mhdp_zinogre_body_damage_max
    scoreboard players reset #mhdp_zinogre_arml_damage_max
    scoreboard players reset #mhdp_zinogre_armr_damage_max
    scoreboard players reset #mhdp_zinogre_tail_damage_max
    scoreboard players reset #mhdp_zinogre_head_damage
    scoreboard players reset #mhdp_zinogre_body_damage
    scoreboard players reset #mhdp_zinogre_arml_damage
    scoreboard players reset #mhdp_zinogre_armr_damage
    scoreboard players reset #mhdp_zinogre_tail_damage
# スタン値
    scoreboard players reset #mhdp_zinogre_stun_damage_max
    scoreboard players reset #mhdp_zinogre_stun_damage
# 特殊怯み管理
    scoreboard players reset #mhdp_zinogre_flying_damage_max
    scoreboard players reset #mhdp_zinogre_flying_damage
# 怒り管理
    scoreboard players reset #mhdp_zinogre_anger_damage_max
    scoreboard players reset #mhdp_zinogre_anger_damage
    scoreboard players reset #mhdp_zinogre_anger_count
# 行動管理
    scoreboard players reset #mhdp_zinogre_dashcount
    scoreboard players reset #mhdp_zinogre_targetcount
    scoreboard players reset #mhdp_zinogre_actcount_phase
    scoreboard players reset #mhdp_zinogre_actcount
    scoreboard players reset #mhdp_zinogre_health
# 計算用
    scoreboard players reset #zinogre_mine_pos
    scoreboard players reset #zinogre_mine_x
    scoreboard players reset #zinogre_mine_y
    scoreboard players reset #zinogre_mine_z
    scoreboard players reset #zinogre_height_target
    scoreboard players reset #zinogre_damage
# アイテム管理
    scoreboard players reset #mhdp_zinogre_flash_time

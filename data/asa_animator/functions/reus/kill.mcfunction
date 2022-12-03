#> asa_animator:reus/kill
#
# 火竜 消去処理

# パーツ消去
    kill @e[type=armor_stand,tag=ReusRoot]
    kill @e[type=armor_stand,tag=ReusParts]
    kill @s[type=armor_stand,tag=MonsterShot,tag=ReusBreath]

## スコアホルダー解放
# 部位耐久値
    scoreboard players reset #mhdp_reus_head_damage_max
    scoreboard players reset #mhdp_reus_body_damage_max
    scoreboard players reset #mhdp_reus_tail_damage_max
    scoreboard players reset #mhdp_reus_leg_damage_max
    scoreboard players reset #mhdp_reus_head_damage
    scoreboard players reset #mhdp_reus_body_damage
    scoreboard players reset #mhdp_reus_tail_damage
    scoreboard players reset #mhdp_reus_leg_damage
# スタン値
    scoreboard players reset #mhdp_reus_stun_damage_max
    scoreboard players reset #mhdp_reus_stun_damage
# 特殊怯み管理
    scoreboard players reset #mhdp_reus_flying_damage_max
    scoreboard players reset #mhdp_reus_flying_damage
# 怒り管理
    scoreboard players reset #mhdp_reus_anger_damage_max
    scoreboard players reset #mhdp_reus_anger_damage
    scoreboard players reset #mhdp_reus_anger_count
# 行動管理
    scoreboard players reset #mhdp_reus_targetcount
    scoreboard players reset #mhdp_reus_actcount_phase
    scoreboard players reset #mhdp_reus_actcount
    scoreboard players reset #mhdp_reus_health
# 計算用
    scoreboard players reset #reus_mine_pos
    scoreboard players reset #reus_mine_x
    scoreboard players reset #reus_mine_y
    scoreboard players reset #reus_mine_z
    scoreboard players reset #reus_height_target
    scoreboard players reset #reus_damage
# アイテム管理
    scoreboard players reset #mhdp_reus_flash_time

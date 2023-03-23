#> asa_animator:zinogre/manager/0_init/3_general/hp
#
# 雷狼竜 召喚処理 HP・部位耐久値初期化

# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.Zinogre set value true

# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_zinogre_health AsaMatrix 700000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_zinogre_health AsaMatrix 1050000
    # HP倍率適用
        scoreboard players operation #mhdp_zinogre_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
        scoreboard players operation #mhdp_zinogre_health AsaMatrix /= #asam_const_100 AsaMatrix
    # マルチ補正計算
        execute store result score #mhdp_players_temp MhdpCore run execute if entity @a
        scoreboard players set #mhdp_const_temp_0 AsaMatrix 60
        scoreboard players set #mhdp_const_temp_1 AsaMatrix 40
        scoreboard players operation #mhdp_const_temp_1 AsaMatrix *= #mhdp_players_temp MhdpCore
        scoreboard players operation #mhdp_const_temp_0 AsaMatrix += #mhdp_const_temp_1 AsaMatrix
        scoreboard players operation #mhdp_zinogre_health AsaMatrix *= #mhdp_const_temp_0 AsaMatrix
    # 代入
        execute store result score #mhdp_zinogre_health_half AsaMatrix run scoreboard players operation #mhdp_zinogre_health AsaMatrix /= #asam_const_100 AsaMatrix
    # 体力半分取得
        scoreboard players set #mhdp_const_temp AsaMatrix 2
        scoreboard players operation #mhdp_zinogre_health_half AsaMatrix /= #mhdp_const_temp AsaMatrix

# ボスバー設定
    bossbar add asa_animator:zinogre_health [{"text": "雷狼竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:zinogre_health color red
    execute store result bossbar asa_animator:zinogre_health max run scoreboard players get #mhdp_zinogre_health AsaMatrix
    bossbar set asa_animator:zinogre_health players @a
    bossbar set asa_animator:zinogre_health visible true
    execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix

# 部位耐久値
    ## 頭：8%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_head_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：10%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_body_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕：12%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_arml_damage_max AsaMatrix store result score #mhdp_zinogre_armr_damage AsaMatrix store result score #mhdp_zinogre_armr_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_tail_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 脚：12%
    scoreboard players set #mhdp_const_temp AsaMatrix 12
    scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_leg_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix /= #asam_const_100 AsaMatrix
# スタン値
    ## 10%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_stun_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 22%
    scoreboard players set #mhdp_const_temp AsaMatrix 22
    scoreboard players operation #mhdp_zinogre_thunder_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_thunder_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_thunder_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_thunder_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix /= #asam_const_100 AsaMatrix

# デバッグ用
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_head_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_body_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_tail_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_leg_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_leg_damage AsaMatrix /= #asam_const_100 AsaMatrix
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_stun_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_stun_damage AsaMatrix /= #asam_const_100 AsaMatrix
    # scoreboard players set #mhdp_const_temp AsaMatrix 1
    # scoreboard players operation #mhdp_zinogre_flying_damage AsaMatrix = #mhdp_zinogre_health AsaMatrix
    # scoreboard players operation #mhdp_zinogre_flying_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    # execute store result score #mhdp_zinogre_flying_damage_max AsaMatrix run scoreboard players operation #mhdp_zinogre_flying_damage AsaMatrix /= #asam_const_100 AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp

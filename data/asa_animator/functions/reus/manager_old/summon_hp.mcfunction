

# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.Reus set value true

# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_reus_health AsaMatrix 50000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_reus_health AsaMatrix 70000
    # HP倍率適用
        scoreboard players operation #mhdp_reus_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
        scoreboard players operation #mhdp_reus_health AsaMatrix /= #asam_const_100 AsaMatrix
    # マルチ補正計算
        execute store result score #mhdp_players_temp MhdpCore run execute if entity @a
        scoreboard players set #mhdp_const_temp_0 AsaMatrix 60
        scoreboard players set #mhdp_const_temp_1 AsaMatrix 40
        scoreboard players operation #mhdp_const_temp_1 AsaMatrix *= #mhdp_players_temp MhdpCore
        scoreboard players operation #mhdp_const_temp_0 AsaMatrix += #mhdp_const_temp_1 AsaMatrix
        scoreboard players operation #mhdp_reus_health AsaMatrix *= #mhdp_const_temp_0 AsaMatrix
    # 代入
        execute store result score #mhdp_reus_health_half AsaMatrix store result score #mhdp_reus_head_damage AsaMatrix store result score #mhdp_reus_body_damage AsaMatrix store result score #mhdp_reus_tail_damage AsaMatrix store result score #mhdp_reus_anger_damage_max AsaMatrix store result score #mhdp_reus_flying_damage_max AsaMatrix store result score #mhdp_reus_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_reus_health AsaMatrix /= #asam_const_100 AsaMatrix
    # 体力半分取得
        scoreboard players set #mhdp_const_temp AsaMatrix 2
        scoreboard players operation #mhdp_reus_health_half AsaMatrix /= #mhdp_const_temp AsaMatrix

# ボスバー設定
    bossbar add asa_animator:reus_health [{"text": "火竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:reus_health color red
    execute store result bossbar asa_animator:reus_health max run scoreboard players get #mhdp_reus_health AsaMatrix
    bossbar set asa_animator:reus_health players @a
    bossbar set asa_animator:reus_health visible true
    execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix

# 部位耐久値
    ## 頭：10%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：10%
    scoreboard players set #mhdp_const_temp AsaMatrix 10
    scoreboard players operation #mhdp_reus_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_reus_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_reus_flying_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_flying_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_reus_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players operation #mhdp_reus_flying_damage AsaMatrix = #mhdp_reus_flying_damage_max AsaMatrix
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp

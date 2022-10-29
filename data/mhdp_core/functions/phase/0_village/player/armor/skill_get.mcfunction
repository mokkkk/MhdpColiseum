#> mhdp_core:phase/0_village/player/armor/skill_get
#
# プレイヤー装備中の防具のスキルレベルを計算

# データ取り出し
    execute store result score #mhdp_temp_skill_id SkillLv run data get storage mhdp_core:temp Temp.Skills[-1].Id
    execute store result score #mhdp_temp_skill_lv SkillLv run data get storage mhdp_core:temp Temp.Skills[-1].Lv
    data remove storage mhdp_core:temp Temp.Skills[-1]

# 目的のスキルに加算
    # 1：攻撃
        execute if score #mhdp_temp_skill_id SkillLv matches 1 run scoreboard players operation #mhdp_skill_id_1 SkillLv += #mhdp_temp_skill_lv SkillLv
    # 2：火属性攻撃
        execute if score #mhdp_temp_skill_id SkillLv matches 2 run scoreboard players operation #mhdp_skill_id_2 SkillLv += #mhdp_temp_skill_lv SkillLv
    # 3：風圧耐性
        execute if score #mhdp_temp_skill_id SkillLv matches 3 run scoreboard players operation #mhdp_skill_id_3 SkillLv += #mhdp_temp_skill_lv SkillLv

# データが残っている限り繰り返す
    execute if data storage mhdp_core:temp Temp.Skills[0] run function mhdp_core:phase/0_village/player/armor/skill_get

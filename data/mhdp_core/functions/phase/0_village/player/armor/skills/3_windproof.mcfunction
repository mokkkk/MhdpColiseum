
# 風圧耐性
    execute if score #mhdp_skill_id_3 SkillLv matches 1 run tag @s add SklWindproofLv1
    execute if score #mhdp_skill_id_3 SkillLv matches 2.. run tag @s add SklWindproofLv2
    execute if score #mhdp_skill_id_3 SkillLv matches 1 run advancement grant @s until mhdp_core:skills/3_windproof/1
    execute if score #mhdp_skill_id_3 SkillLv matches 2.. run advancement grant @s until mhdp_core:skills/3_windproof/2

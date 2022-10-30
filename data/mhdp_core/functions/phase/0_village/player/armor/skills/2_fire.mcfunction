
# 火属性攻撃
    execute if score #mhdp_skill_id_2 SkillLv matches 1 run tag @s add SklFireLv1
    execute if score #mhdp_skill_id_2 SkillLv matches 2 run tag @s add SklFireLv2
    execute if score #mhdp_skill_id_2 SkillLv matches 3.. run tag @s add SklFireLv3
    execute if score #mhdp_skill_id_2 SkillLv matches 1 run advancement grant @s until mhdp_core:skills/2_fire/1
    execute if score #mhdp_skill_id_2 SkillLv matches 2 run advancement grant @s until mhdp_core:skills/2_fire/2
    execute if score #mhdp_skill_id_2 SkillLv matches 3.. run advancement grant @s until mhdp_core:skills/2_fire/3

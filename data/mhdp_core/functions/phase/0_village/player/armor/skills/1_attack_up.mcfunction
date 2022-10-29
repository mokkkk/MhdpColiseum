
# 攻撃
    execute if score #mhdp_skill_id_1 SkillLv matches 1 run tag @s add SklAttackUpLv1
    execute if score #mhdp_skill_id_1 SkillLv matches 2 run tag @s add SklAttackUpLv2
    execute if score #mhdp_skill_id_1 SkillLv matches 3.. run tag @s add SklAttackUpLv3
    execute if score #mhdp_skill_id_1 SkillLv matches 1 run advancement grant @s until mhdp_core:skills/1_attack_up/1
    execute if score #mhdp_skill_id_1 SkillLv matches 2 run advancement grant @s until mhdp_core:skills/1_attack_up/2
    execute if score #mhdp_skill_id_1 SkillLv matches 3.. run advancement grant @s until mhdp_core:skills/1_attack_up/3

#> mhdp_core:phase/0_village/player/armor/skill
#
# プレイヤー装備中の防具のスキルレベルを計算

# スキル進捗リセット
    advancement revoke @s from mhdp_core:skills/root
    advancement grant @s only mhdp_core:skills/root

# 処理用スコア定義
    scoreboard objectives add SkillLv dummy

# データ取得
    execute if data storage mhdp_core:temp Temp.Skills[0] run function mhdp_core:phase/0_village/player/armor/skill_get

# スキルタグ付与
    execute if score #mhdp_skill_id_1 SkillLv matches 1.. run function mhdp_core:phase/0_village/player/armor/skills/1_attack_up
    execute if score #mhdp_skill_id_2 SkillLv matches 1.. run function mhdp_core:phase/0_village/player/armor/skills/2_fire
    execute if score #mhdp_skill_id_3 SkillLv matches 1.. run function mhdp_core:phase/0_village/player/armor/skills/3_windproof

# 終了
    data remove storage mhdp_core:temp Temp
    scoreboard players reset * SkillLv

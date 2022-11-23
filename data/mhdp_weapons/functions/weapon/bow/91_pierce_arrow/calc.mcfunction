#> mhdp_weapons:weapon/bow/90_arrow/calc
#
# 放たれた矢の処理 ダメージ減算
#

# ダメージ減算
    scoreboard players set #mhdp_temp_const MhdpCore 15
    scoreboard players operation #mhdp_temp_damage_multiply MhdpCore *= #mhdp_temp_const MhdpCore
    scoreboard players operation #mhdp_temp_damage_multiply MhdpCore /= #asam_const_100 AsaMatrix
    scoreboard players operation #mhdp_temp_damage_multiply_element MhdpCore *= #mhdp_temp_const MhdpCore
    scoreboard players operation #mhdp_temp_damage_multiply_element MhdpCore /= #asam_const_100 AsaMatrix
    scoreboard players reset #mhdp_temp_const
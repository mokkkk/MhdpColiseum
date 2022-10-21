#> mhdp_weapons:core/attack/get_element_damage
#
# 攻撃時処理 属性ダメージ計算

# ダメージ計算
    scoreboard players operation #mhdp_temp_element_damage MhdpCore *= #mhdp_temp_element_def MhdpCore
    scoreboard players operation #mhdp_temp_element_damage MhdpCore /= #asam_const_100 AsaMatrix
    scoreboard players operation #mhdp_temp_element_damage MhdpCore *= #mhdp_temp_damage_multiply_element MhdpCore
    scoreboard players operation #mhdp_temp_element_damage MhdpCore /= #asam_const_100 AsaMatrix

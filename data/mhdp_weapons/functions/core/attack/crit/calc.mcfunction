#> mhdp_weapons:core/attack/crit/calc
#
# 攻撃時処理 会心補正適用

# 取得
    scoreboard players set #mhdp_crit_multiply MhdpCore 115
    # スキル：超会心
        execute if entity @s[tag=SklCritBoostLv1] run scoreboard players set #mhdp_crit_multiply MhdpCore 125
        execute if entity @s[tag=SklCritBoostLv2] run scoreboard players set #mhdp_crit_multiply MhdpCore 132

# 適用
    scoreboard players operation #mhdp_temp_damage MhdpCore *= #mhdp_crit_multiply MhdpCore
    scoreboard players operation #mhdp_temp_damage MhdpCore /= #asam_const_100 AsaMatrix

# 属性適用（要スキル：属性会心）
    scoreboard players set #mhdp_crit_multiply MhdpCore 115
    execute if entity @s[tag=SklElementCrit] run scoreboard players operation #mhdp_temp_element_damage MhdpCore *= #mhdp_crit_multiply MhdpCore
    execute if entity @s[tag=SklElementCrit] run scoreboard players operation #mhdp_temp_element_damage MhdpCore /= #asam_const_100 AsaMatrix

# 終了
    tag @s add Critical
    scoreboard players reset #mhdp_crit_multiply

#> asa_animator:zinogre/manager/1_change/act
#
# 雷狼竜 アニメーション遷移処理

# 初遭遇時
    execute if entity @s[tag=!AlreadyVoice] run function asa_animator:zinogre/manager/1_change/0_first_contact/

# 位置関係取得
    function asa_animator:zinogre/manager/1_change/check_pos

# 遷移
    # 地上
        # execute if predicate asa_animator:zinogre/stay if score #mhdp_zinogre_actcount_phase AsaMatrix matches ..6 unless entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/1_change/2_landing/
    # 地上→飛行
        # execute if predicate asa_animator:zinogre/stay if score #mhdp_zinogre_actcount_phase AsaMatrix matches 7.. unless entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/1_change/3_start_fly/
    # 飛行
        # execute if predicate asa_animator:zinogre/stay if score #mhdp_zinogre_actcount_phase AsaMatrix matches ..2 if entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/1_change/4_flying/
    # 飛行→地上
        # execute if predicate asa_animator:zinogre/stay if score #mhdp_zinogre_actcount_phase AsaMatrix matches 3.. if entity @s[tag=IsFlying] run function asa_animator:zinogre/manager/1_change/5_end_fly/

# 終了
    tag @s remove IsForward
    tag @s remove IsBack

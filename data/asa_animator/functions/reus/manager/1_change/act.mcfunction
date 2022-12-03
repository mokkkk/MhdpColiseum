#> asa_animator:reus/manager/1_change/act
#
# 火竜 アニメーション遷移処理

# 初遭遇時
    execute if entity @s[tag=!AlreadyVoice] run function asa_animator:reus/manager/1_change/0_first_contact/

# 遷移
    # 地上
        execute if predicate asa_animator:reus/stay unless score #mhdp_reus_actcount_phase AsaMatrix matches 7.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/1_change/2_landing/
    # 地上→飛行
        execute if predicate asa_animator:reus/stay if score #mhdp_reus_actcount_phase AsaMatrix matches 7.. unless entity @s[tag=IsFlying] run function asa_animator:reus/manager/1_change/3_start_fly/
    # 飛行（）
        execute if predicate asa_animator:reus/stay unless score #mhdp_reus_actcount_phase AsaMatrix matches 4.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/1_change/4_flying/
    # 飛行→地上
        # execute if predicate asa_animator:reus/stay if score #mhdp_reus_actcount_phase AsaMatrix matches 5.. if entity @s[tag=IsFlying] run function asa_animator:reus/manager/change_phase/fly_to_land

#> mhdp_weapons:core/attack/calc_item_skill
#
# スキル・アイテム補正

# アイテム補正取得
    # 鬼人薬：+5
        execute if entity @s[tag=ItmDemondrug] run scoreboard players add #mhdp_temp_atk_damage MhdpCore 500

# スキル補正取得
    # 攻撃：
        # LV1：+3
            execute if entity @s[tag=SklAttackUpLv1] run scoreboard players add #mhdp_temp_atk_damage MhdpCore 300
        # LV2：+6
            execute if entity @s[tag=SklAttackUpLv2] run scoreboard players add #mhdp_temp_atk_damage MhdpCore 600
        # LV3：+12
            execute if entity @s[tag=SklAttackUpLv3] run scoreboard players add #mhdp_temp_atk_damage MhdpCore 1200

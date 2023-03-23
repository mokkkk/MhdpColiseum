
### 地上時行動

# お手
    # 開始・バックステップ
        execute if entity @s[tag=AnmHandLSB] run function asa_animator:zinogre/anim/hand_l_start/main
        execute if entity @s[tag=AnmHandRSB] run function asa_animator:zinogre/anim/hand_r_start/main
    # 開始・前方ステップ
        execute if entity @s[tag=AnmHandLSF] run function asa_animator:zinogre/anim/hand_l_start_step/main
        execute if entity @s[tag=AnmHandRSF] run function asa_animator:zinogre/anim/hand_r_start_step/main
    # 中段
        execute if entity @s[tag=AnmHandL2R] run function asa_animator:zinogre/anim/hand_l_to_r/main
        execute if entity @s[tag=AnmHandR2L] run function asa_animator:zinogre/anim/hand_r_to_l/main
    # 終段
        execute if entity @s[tag=AnmHandLE] run function asa_animator:zinogre/anim/hand_l_end/main
        execute if entity @s[tag=AnmHandRE] run function asa_animator:zinogre/anim/hand_r_end/main
    # キャンセルチャージお手
        execute if entity @s[tag=AnmHandL2CR] run function asa_animator:zinogre/anim/hand_l_to_chargehand_r/main
        execute if entity @s[tag=AnmHandR2CL] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/main
    # キャンセル帯電
        execute if entity @s[tag=AnmHandL2Charge] run function asa_animator:zinogre/anim/hand_l_to_charge/main
        execute if entity @s[tag=AnmHandR2Charge] run function asa_animator:zinogre/anim/hand_r_to_charge/main

# ヘッドバット
    execute if entity @s[tag=AnmHead] run function asa_animator:zinogre/anim/head/main

# ボディプレス
    execute if entity @s[tag=AnmPress] run function asa_animator:zinogre/anim/press/main

# ショルダータックル
    execute if entity @s[tag=AnmTackleL] run function asa_animator:zinogre/anim/tackle_l/main
    execute if entity @s[tag=AnmTackleR] run function asa_animator:zinogre/anim/tackle_r/main

# 飛び掛かり
    execute if entity @s[tag=AnmJump] run function asa_animator:zinogre/anim/jump/main
    # 連続飛び掛かり
        execute if entity @s[tag=AnmJump2Jump] run function asa_animator:zinogre/anim/jump_to_jump/main

# サマーソルト
    execute if entity @s[tag=AnmSaultL] run function asa_animator:zinogre/anim/sault_l/main
    execute if entity @s[tag=AnmSaultR] run function asa_animator:zinogre/anim/sault_r/main

# 尻尾たたきつけ（前方）
    execute if entity @s[tag=AnmTailF] run function asa_animator:zinogre/anim/tail_forward/main

# 尻尾なぎはらい（後方）
    execute if entity @s[tag=AnmTailBL] run function asa_animator:zinogre/anim/tail_whip_l/main
    execute if entity @s[tag=AnmTailBR] run function asa_animator:zinogre/anim/tail_whip_r/main

### その他

# 地上時討伐
    # execute if entity @s[tag=AnmDeath] run function asa_animator:reus/anim/death/main
# 飛行時討伐
    # execute if entity @s[tag=AnmFlyDeath] run function asa_animator:reus/anim/flying_death/main

# 登場
    # execute if entity @s[tag=AnmSummon] run function asa_animator:reus/anim/summon/main
# 咆哮
    # execute if entity @s[tag=AnmVoice] run function asa_animator:reus/anim/voice/main
# 怒り
    # execute if entity @s[tag=AnmAnger] run function asa_animator:reus/anim/anger/main
# 飛行時怒り
    # execute if entity @s[tag=AnmFAnger] run function asa_animator:reus/anim/flying_voice/main

# 頭部ひるみ
    # execute if entity @s[tag=AnmDHead] run function asa_animator:reus/anim/damage_head/main
# 胴体ひるみ
    # execute if entity @s[tag=AnmDBody] run function asa_animator:reus/anim/damage_body/main
# 尻尾ひるみ
    # execute if entity @s[tag=AnmDTail] run function asa_animator:reus/anim/damage_tail/main
# 尻尾ひるみ（破壊）
    # execute if entity @s[tag=AnmDTailD] run function asa_animator:reus/anim/damage_tail_destroy/main
# 転倒
    # execute if entity @s[tag=AnmDLegL] run function asa_animator:reus/anim/damage_leg_l/main
    # execute if entity @s[tag=AnmDLegR] run function asa_animator:reus/anim/damage_leg_r/main
# スタン
    # execute if entity @s[tag=AnmDStun] run function asa_animator:reus/anim/damage_stun/main
# 飛行時ひるみ（落下）
    # execute if entity @s[tag=AnmFlyDamage] run function asa_animator:reus/anim/flying_damage/main
# 飛行時ひるみ（スタン）
    # execute if entity @s[tag=AnmFStun] run function asa_animator:reus/anim/flying_stun/main

# 攻撃後後隙
    # execute if entity @s[tag=AnmAfter] run function asa_animator:reus/anim/after_attack/main
# 攻撃後後隙（短）
    # execute if entity @s[tag=AnmAfterS] run function asa_animator:reus/anim/after_attack_short/main

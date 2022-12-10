
### 地上時行動

# 移動（軸合わせ有）
    execute if entity @s[tag=AnmMove] run function asa_animator:reus/anim/move/main

# 尻尾回転
    execute if entity @s[tag=AnmTailL] run function asa_animator:reus/anim/tail_spin_l/main
    execute if entity @s[tag=AnmTailR] run function asa_animator:reus/anim/tail_spin_r/main

# 2連噛みつき（軸合わせ有）
    execute if entity @s[tag=AnmBite] run function asa_animator:reus/anim/bite/main

# 突進（軸合わせ有）
    execute if entity @s[tag=AnmDashStart] run function asa_animator:reus/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:reus/anim/dash/main
    execute if entity @s[tag=AnmDashBite] run function asa_animator:reus/anim/dash_bite/main

# バックステップ
    execute if entity @s[tag=AnmBStep] run function asa_animator:reus/anim/bstep/main
# ブレス
    execute if entity @s[tag=AnmBreath] run function asa_animator:reus/anim/breath/main

# 床ドン
    execute if entity @s[tag=AnmJump] run function asa_animator:reus/anim/jump/main

# チャージ噛みつき（軸合わせ有）
    execute if entity @s[tag=AnmBiteC] run function asa_animator:reus/anim/bite_charge/main

# ハード：滑空蹴り
    # execute if entity @s[tag=AnmHardKick] run function asa_animator:reus/anim/hard_jump_kick/main

### 地上 → 飛行

# 飛行開始
    execute if entity @s[tag=AnmFly] run function asa_animator:reus/anim/start_fly/main
# BJB
    # execute if entity @s[tag=AnmBjb] run function asa_animator:reus/anim/bjb/main
# ハード：FJB
    # execute if entity @s[tag=AnmHardFjb] run function asa_animator:reus/anim/hard_fjb/main

### 飛行時行動

# 噛みつき
    execute if entity @s[tag=AnmFBite] run function asa_animator:reus/anim/flying_bite/main

# 尻尾なぎはらい
    execute if entity @s[tag=AnmFTail] run function asa_animator:reus/anim/flying_tail/main

# 3WAYブレス
    execute if entity @s[tag=AnmFBreath3] run function asa_animator:reus/anim/flying_breath_3/main

# 爪攻撃
    execute if entity @s[tag=AnmFAttack] run function asa_animator:reus/anim/flying_attack/main

# 爪強襲
    execute if entity @s[tag=AnmFDash] run function asa_animator:reus/anim/flying_attack_move/main

# 移動ブレス
    execute if entity @s[tag=AnmFBreathML] run function asa_animator:reus/anim/flying_move_breath_l/main
    execute if entity @s[tag=AnmFBreathMR] run function asa_animator:reus/anim/flying_move_breath_r/main

# 地上強襲（着地）
    execute if entity @s[tag=AnmFJump] run function asa_animator:reus/anim/flying_jump/main

# 飛行移動(前進)
    # execute if entity @s[tag=AnmFlyMoveF] run function asa_animator:reus/anim/flying_move_forward/main
# 飛行移動(後退)
    # execute if entity @s[tag=AnmFlyMoveB] run function asa_animator:reus/anim/flying_move_back/main
# 飛行移動(回り込み左)
    # execute if entity @s[tag=AnmFlyMoveL] run function asa_animator:reus/anim/flying_move_left/main
# 飛行移動(回り込み右)
    # execute if entity @s[tag=AnmFlyMoveR] run function asa_animator:reus/anim/flying_move_right/main

# 爪
    # execute if entity @s[tag=AnmFlyAttack] run function asa_animator:reus/anim/flying_attack/main
# なぎ払い爪
    # execute if entity @s[tag=AnmFlyAttackL] run function asa_animator:reus/anim/flying_attack_large/main

# ブレス
    # execute if entity @s[tag=AnmFlyBreath] run function asa_animator:reus/anim/flying_breath/main
# 対地なぎ払い火炎放射
    # execute if entity @s[tag=AnmFlyBreathL] run function asa_animator:reus/anim/flying_breath_large/main

# ハード：チャージ噛みつき
    # execute if entity @s[tag=AnmHardFlyBiteC] run function asa_animator:reus/anim/hard_flying_bite_charge/main

# ハード：移動床ドン
    # execute if entity @s[tag=AnmHardFlyJump] run function asa_animator:reus/anim/hard_flying_jump/main
    # ハード：移動床ドン→BJB
        # execute if entity @s[tag=AnmHardJump2Bjb] run function asa_animator:reus/anim/hard_jump_to_bjb/main

# ハード：対地前進火炎放射
    # execute if entity @s[tag=AnmHardFlyFlame] run function asa_animator:reus/anim/hard_flying_flare/main
    # ハード：振り返りブレス
        # execute if entity @s[tag=AnmHardFlyBreathTurn] run function asa_animator:reus/anim/hard_flying_breath_turn/main

### 飛行 → 地上

# 着地
    # execute if entity @s[tag=AnmEndFly] run function asa_animator:reus/anim/end_fly/main
# 飛行床ドン
    # execute if entity @s[tag=AnmFlyJump] run function asa_animator:reus/anim/flying_jump/main
# 地走り火炎
    # execute if entity @s[tag=AnmFlyBreathC] run function asa_animator:reus/anim/flying_breath_charge/main


# 飛行時ひるみ
    # execute if entity @s[tag=AnmFlyDamage] run function asa_animator:reus/anim/flying_damage/main

# 地上時討伐
    execute if entity @s[tag=AnmDeath] run function asa_animator:reus/anim/death/main

# 飛行時討伐
    # execute if entity @s[tag=AnmFlyDeath] run function asa_animator:reus/anim/flying_death/main

# 登場
    # execute if entity @s[tag=AnmSummon] run function asa_animator:reus/anim/summon/main
# 咆哮
    # execute if entity @s[tag=AnmVoice] run function asa_animator:reus/anim/voice/main
# 怒り
    # execute if entity @s[tag=AnmAnger] run function asa_animator:reus/anim/anger/main
# 飛行時怒り
    # execute if entity @s[tag=AnmFlyAnger] run function asa_animator:reus/anim/flying_voice/main

# 頭部ひるみ
    execute if entity @s[tag=AnmDHead] run function asa_animator:reus/anim/damage_head/main
# 胴体ひるみ
    execute if entity @s[tag=AnmDBody] run function asa_animator:reus/anim/damage_body/main
# 尻尾ひるみ
    execute if entity @s[tag=AnmDTail] run function asa_animator:reus/anim/damage_tail/main
# 尻尾ひるみ（破壊）
    execute if entity @s[tag=AnmDTailD] run function asa_animator:reus/anim/damage_tail_destroy/main
# 転倒
    execute if entity @s[tag=AnmDLegL] run function asa_animator:reus/anim/damage_leg_l/main
    execute if entity @s[tag=AnmDLegR] run function asa_animator:reus/anim/damage_leg_r/main
# スタン
    execute if entity @s[tag=AnmDStun] run function asa_animator:reus/anim/damage_stun/main

# 攻撃後後隙
    execute if entity @s[tag=AnmAfter] run function asa_animator:reus/anim/after_attack/main
# 攻撃後後隙（短）
    execute if entity @s[tag=AnmAfterS] run function asa_animator:reus/anim/after_attack_short/main

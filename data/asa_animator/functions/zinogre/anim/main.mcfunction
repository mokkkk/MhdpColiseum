
### 地上時行動

# ヘッドバット
    execute if entity @s[tag=AnmHead] run function asa_animator:zinogre/anim/head/main

# 尻尾たたきつけ（前方）
    execute if entity @s[tag=AnmTailF] run function asa_animator:zinogre/anim/tail_forward/main

# ボディプレス
    execute if entity @s[tag=AnmPress] run function asa_animator:zinogre/anim/press/main

# ショルダータックル

# サマーソルト
    execute if entity @s[tag=AnmSaultL] run function asa_animator:zinogre/anim/sault_l/main
    execute if entity @s[tag=AnmSaultR] run function asa_animator:zinogre/anim/sault_r/main

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

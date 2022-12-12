#> asa_animator:reus/manager/4_general/remove_animation_tag
#
# 火竜 アニメーション中断

# タグ消去
    tag @s remove AnmMove
    tag @s remove AnmTailL
    tag @s remove AnmTailR
    tag @s remove AnmBite
    tag @s remove AnmDashStart
    tag @s remove AnmDash
    tag @s remove AnmDashBite
    tag @s remove AnmBStep
    tag @s remove AnmBreath
    tag @s remove AnmJump
    tag @s remove AnmBiteC
    tag @s remove AnmFly
    tag @s remove AnmBjb
    tag @s remove AnmFMoveL
    tag @s remove AnmFMoveR
    tag @s remove AnmFBite
    tag @s remove AnmFTail
    tag @s remove AnmFBreath3
    tag @s remove AnmFAttack
    tag @s remove AnmFDash
    tag @s remove AnmFBreathML
    tag @s remove AnmFBreathMR
    tag @s remove AnmFJump
    tag @s remove AnmFBreathL
    tag @s remove AnmFBreathV
    tag @s remove AnmFEnd
    tag @s remove AnmFEndML
    tag @s remove AnmFEndMR
    tag @s remove AnmDeath
    tag @s remove AnmFlyDeath
    tag @s remove AnmSummon
    tag @s remove AnmVoice
    tag @s remove AnmAnger
    tag @s remove AnmFAnger
    tag @s remove AnmDHead
    tag @s remove AnmDBody
    tag @s remove AnmDTail
    tag @s remove AnmDTailD
    tag @s remove AnmDLegL
    tag @s remove AnmDLegR
    tag @s remove AnmDStun
    tag @s remove AnmFlyDamage
    tag @s remove AnmAfter
    tag @s remove AnmAfterS
    tag @s remove AnmTurnL
    tag @s remove AnmTurnR
    tag @s remove IsTurn

# 処理用マーカー消去
    kill @e[type=marker,tag=ReusBreathTarget]
    kill @e[type=marker,tag=ReusChargeFPos]
    kill @e[type=marker,tag=ReusChargeTarget]
    kill @e[type=marker,tag=ReusChargeAttack]

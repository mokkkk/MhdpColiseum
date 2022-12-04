#> asa_animator:reus/manager/4_general/remove_animation_tag
#
# 火竜 アニメーション中断

# タグ消去
    tag @s remove AnmTailL
    tag @s remove AnmTailR

    tag @s remove AnmDHead
    tag @s remove AnmDBody
    tag @s remove AnmDTail
    tag @s remove AnmDTailD
    tag @s remove AnmDLegL
    tag @s remove AnmDLegR
    tag @s remove AnmDStun

# tag @s remove AnmTailL
# tag @s remove AnmTailR
# tag @s remove AnmTail2
# tag @s remove AnmJump
# tag @s remove AnmBreath
# tag @s remove AnmBjb
# tag @s remove AnmMove
# tag @s remove AnmBite
# tag @s remove AnmBite2
# tag @s remove AnmBiteC
# tag @s remove AnmFly
# tag @s remove AnmEndFly
# tag @s remove AnmFlyAttack
# tag @s remove AnmFlyAttackL
# tag @s remove AnmFlyJump
# tag @s remove AnmFlyBreath
# tag @s remove AnmFlyBreathC
# tag @s remove AnmFlyBreathL
# tag @s remove AnmFlyMoveB
# tag @s remove AnmFlyMoveF
# tag @s remove AnmFlyMoveL
# tag @s remove AnmFlyMoveR
# tag @s remove AnmFlyDamage
# tag @s remove AnmDHead
# tag @s remove AnmDBody
# tag @s remove AnmDTail
# tag @s remove AnmTurnR
# tag @s remove AnmTurnL
# tag @s remove AnmSummon
# tag @s remove AnmVoice
# tag @s remove AnmAnger
# tag @s remove AnmFlyAnger
# tag @s remove AnmHardKick
# tag @s remove AnmHardFjb
# tag @s remove AnmHardFlyBiteC
# tag @s remove AnmHardFlyJump
# tag @s remove AnmHardJump2Bjb
# tag @s remove AnmHardFlyFlame
# tag @s remove AnmHardFlyBreathTurn
# tag @s remove IsTurn

# 処理用マーカー消去
    kill @e[type=marker,tag=ReusBreathTarget]
    kill @e[type=marker,tag=ReusChargeFPos]
    kill @e[type=marker,tag=ReusChargeTarget]
    kill @e[type=marker,tag=ReusChargeAttack]

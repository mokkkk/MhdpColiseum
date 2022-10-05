#> mhdp_core:phase/1_quest_received/departure/error
#
# Phase1_クエスト受注 エラーメッセージ表示

# 各プレイヤーの引っかかった条件を表示
    tellraw @a {"text":"【クエストの出発条件を満たしていません！】"}
    execute if entity @a[tag=Check0] run tellraw @a [{"text": "【武器を持っていないとクエストに出発できません："},{"selector":"@a[tag=Check0]"},{"text": "】"}]
    execute if entity @a[tag=Check1] run tellraw @a [{"text": "【武器は1本までしか所持できません："},{"selector":"@a[tag=Check1]"},{"text": "】"}]
    execute if entity @a[tag=Check2] run tellraw @a [{"text": "【特殊装具は1種類につき1つしか所持できません："},{"selector":"@a[tag=Check2]"},{"text": "】"}]
    execute if entity @a[tag=Check3] run tellraw @a [{"text": "【特殊装具は2種類までしか所持できません："},{"selector":"@a[tag=Check3]"},{"text": "】"}]
    execute if entity @a[tag=Check4,tag=!Check0,tag=!Check1] run tellraw @a [{"text": "【武器がオフハンドにセットされていません："},{"selector":"@a[tag=Check4,tag=!Check0,tag=!Check1]"},{"text": "】"}]

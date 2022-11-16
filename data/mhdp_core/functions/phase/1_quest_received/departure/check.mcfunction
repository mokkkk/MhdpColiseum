#> mhdp_core:phase/1_quest_received/departure/check
#
# Phase1_クエスト受注 クエスト出発待機処理 出発条件確認

# 武器を持っていない
    execute as @a run function mhdp_core:phase/1_quest_received/departure/check_0_has_weapon

# 武器を2本以上持っている
    execute as @a run function mhdp_core:phase/1_quest_received/departure/check_1_weapon_count

# 同じ種類の特殊装具を2つ以上持っている
    execute as @a run function mhdp_core:phase/1_quest_received/departure/check_2_sp_item_kind

# 特殊装具を3種類以上持っている（未実装）
    execute as @a run function mhdp_core:phase/1_quest_received/departure/check_3_sp_item_count

# 武器をオフハンドにセットしていない
    execute as @a run function mhdp_core:phase/1_quest_received/departure/check_4_offhand

# いずれかの条件に引っかかった場合，エラーメッセージ表示
    execute as @a unless entity @s[tag=!Check0,tag=!Check1,tag=!Check2,tag=!Check3,tag=!Check4] run tag @s add Temp
    execute if entity @a[tag=Temp] run function mhdp_core:phase/1_quest_received/departure/error

# 全条件に引っかからなかった場合，クエスト開始処理起動
    execute unless entity @a[tag=Check0] unless entity @a[tag=Check1] unless entity @a[tag=Check2] unless entity @a[tag=Check3] unless entity @a[tag=Check4] run function mhdp_core:phase/1_quest_received/departure/start

# 終了
    tag @a remove Check0
    tag @a remove Check1
    tag @a remove Check2
    tag @a remove Check3
    tag @a remove Check4
    tag @a remove Temp

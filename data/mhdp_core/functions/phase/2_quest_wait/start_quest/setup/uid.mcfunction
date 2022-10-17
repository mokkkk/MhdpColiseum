#> mhdp_core:phase/2_quest_wait/start_quest/setup/uid
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤーUID割り当て

# UID割り当て
    scoreboard players operation @s MhdpPlayerUid = #mhdp_temp_uid MhdpCore
    scoreboard players add #mhdp_temp_uid MhdpCore 1

# スコア初期化
    scoreboard players set @s MhdpWeaponDeactivateTimer 0

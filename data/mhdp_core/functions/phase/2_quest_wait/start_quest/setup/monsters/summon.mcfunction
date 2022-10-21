#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/summon
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚 分岐

# 火竜
    execute if data storage mhdp_core:temp {Temp:"Reus"} run function asa_animator:reus/manager/summon

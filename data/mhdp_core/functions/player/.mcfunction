#> mhdp_core:player/
#
# 各プレイヤーが毎tick実行する処理

# 初期実行処理（状態取得）
    function mhdp_core:player/pre

# クエスト受注処理（村のみ）
    execute if entity @s[tag=!PlyQuest,tag=AdvTradeQuestNormal] run function mhdp_core:phase/0_village/receive_quest/normal

# 防具取得処理（村のみ）
    execute if entity @s[tag=!PlyQuest,tag=AdvInventoryChangedArmor] run function mhdp_core:phase/0_village/player/armor/

# クエスト中処理
    execute if entity @s[tag=PlyQuest] run function mhdp_core:player/quest/

# 自然回復
    function mhdp_core:player/natural_regeneration/

# 死亡時処理実行
    execute if entity @s[tag=PlyDead] run function mhdp_core:player/death/tick
    # 死亡演出（クエスト中のみ）
        execute if entity @s[tag=PlyDeathAnimation] run function mhdp_core:player/death/animation/main

# デクリメント
    execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players remove @s MhdpTDamage 1
    execute if entity @s[scores={MhdpTAvoid=1..}] run scoreboard players remove @s MhdpTAvoid 1
    execute if entity @s[scores={MhdpTSneakInterval=1..}] run scoreboard players remove @s MhdpTSneakInterval 1

# 終了時実行処理
    function mhdp_core:player/end

# 処理用スコアボード消去
    scoreboard players reset #mhdp_temp_time

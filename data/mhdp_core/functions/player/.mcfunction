#> mhdp_core:player/
#
# 各プレイヤーが毎tick実行する処理

# 初期実行処理（状態取得）
    function mhdp_core:player/pre

# スニーク開始時処理実行
    # execute if entity @s[tag=PlySneakStart] run function mhdp_core:player/sneak/

# クエスト受注処理（村のみ）
    execute if entity @s[tag=!PlyQuest,advancements={mhdp_core:player/villager_trade/quest_normal=true}] run function mhdp_core:phase/0_village/receive_quest/normal

# MhdpWeapons処理（クエスト中のみ）
    execute if entity @s[tag=PlyQuest] run function mhdp_weapons:tick/

# ジャンプ時処理（クエスト中のみ）
    execute if entity @s[tag=PlyQuest,scores={MhdpJump=1..}] run function mhdp_core:player/jump/

# 属性やられ処理（クエスト中のみ）
    execute if entity @s[tag=PlyQuest] run function mhdp_core:player/blight/

# 移動回避処理
    execute if entity @s[tag=!PlySneakAvoidLock,tag=PlySneakAvoidFunc] run function mhdp_core:player/sneak/avoid/main

# ノックバック処理実行
    execute if entity @s[tag=MdhpKnockback] at @s facing entity @e[type=marker,tag=MhdpKnockbackPos] feet rotated ~ 0 run function mhdp_core:player/damage/knockback/

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

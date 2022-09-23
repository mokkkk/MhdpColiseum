#> mhdp_core:player/
#
# 各プレイヤーが毎tick実行する処理

# 初期実行処理
    function mhdp_core:player/pre

# MhdpWeapons処理実行
    # function ..............

# ジャンプ時処理実行
    execute if entity @s[scores={MhdpJump=1..}] run function mhdp_core:player/jump/

# スニーク開始時処理実行
    execute if entity @s[tag=PlySneakStart] run function mhdp_core:player/sneak/
    # 移動回避処理
        execute if entity @s[tag=]

# ノックバック処理実行
    # function ..............

# デクリメント
    execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players remove @s MhdpTDamage 1
    execute if entity @s[scores={MhdpTAvoid=1..}] run scoreboard players remove @s MhdpTAvoid 1
    execute if entity @s[scores={MhdpTSneakInterval=1..}] run scoreboard players remove @s MhdpTSneakInterval 1

# 終了時実行処理
    function mhdp_core:player/end

# 処理用スコアボード消去
    scoreboard players reset #mhdp_temp_time

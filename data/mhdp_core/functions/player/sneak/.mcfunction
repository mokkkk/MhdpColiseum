#> mhdp_core:player/sneak/
#
# プレイヤースニーク開始時に実行する処理


# 2連続でスニークした
    # execute if entity @s[scores={MhdpTSneakInterval=1..}] unless entity @s[tag=PlySneakAvoidFunc] run function mhdp_core:player/sneak/avoid/start

# 初回のスニーク
    # execute unless entity @s[scores={MhdpTSneakInterval=1..}] unless entity @s[tag=PlySneakAvoidFunc] run function mhdp_core:player/sneak/avoid/pre

# 終了
    # tag @s remove PlyStartSneakAvoid

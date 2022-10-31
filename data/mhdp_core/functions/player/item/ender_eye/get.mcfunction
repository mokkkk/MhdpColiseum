#> mhdp_core:player/item/ender_eye/get
#
# プレイヤーエンダーアイ使用検知用に実行する処理

# 状態変化検知
    # 未使用→使用
        execute if entity @s[tag=!PlyUsingEyeCurrent,tag=AdvUsingItemEnderEye] run tag @s add PlyUsingEyeStart
        execute if entity @s[tag=PlyUsingEyeStart] run tag @s add PlyUsingEyeCurrent
    # 使用→未使用
        execute if entity @s[tag=PlyUsingEyeCurrent,tag=!AdvUsingItemEnderEye] run tag @s add PlyUsingEyeEnd
        execute if entity @s[tag=PlyUsingEyeEnd] run tag @s remove PlyUsingEyeCurrent

# 終了
    execute if entity @s[tag=AdvUsingItemEnderEye] run tag @s remove AdvUsingItemEnderEye

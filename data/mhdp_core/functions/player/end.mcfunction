#> mhdp_core:player/end
#
# プレイヤー処理実行後にデータの消去・初期化を行う

# ニンジン棒クリックリセット
    scoreboard players set @s MhdpUsedCoas 0
    tag @s remove PlyUsedCoas

# スニーク状態リセット
    tag @s remove PlySneakStart
    tag @s remove PlySneakEnd
    tag @s remove PlySneakDouble

# エンダーアイ使用状態リセット
    scoreboard players set @s MhdpDropEnderEye 0
    tag @s remove PlyDroppedEnderEye
    tag @s remove PlyUsingEyeStart
    tag @s remove PlyUsingEyeEnd

# 空中状態リセット
    tag @s remove PlyJumpping

# 進捗状況リセット
    execute if entity @s[tag=AdvTradeQuestNormal] run tag @s remove AdvTradeQuestNormal
    execute if entity @s[tag=AdvInventoryChangedMain] run tag @s remove AdvInventoryChangedMain
    execute if entity @s[tag=AdvInventoryChangedOff] run tag @s remove AdvInventoryChangedOff
    execute if entity @s[tag=AdvInventoryChangedOther] run tag @s remove AdvInventoryChangedOther
    execute if entity @s[tag=AdvPlayerHurtEntity] run tag @s remove AdvPlayerHurtEntity

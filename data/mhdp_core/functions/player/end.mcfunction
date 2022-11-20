#> mhdp_core:player/end
#
# プレイヤー処理実行後にデータの消去・初期化を行う

# ニンジン棒クリックリセット
    scoreboard players set @s MhdpUsedCoas 0
    execute if entity @s[tag=PlyUsedCoas] run tag @s remove PlyUsedCoas

# スニーク状態リセット
    execute if entity @s[tag=PlySneakStart] run tag @s remove PlySneakStart
    execute if entity @s[tag=PlySneakEnd] run tag @s remove PlySneakEnd
    execute if entity @s[tag=PlySneakDouble] run tag @s remove PlySneakDouble

# エンダーアイ使用状態リセット
    scoreboard players set @s MhdpDropEnderEye 0
    execute if entity @s[tag=PlyDroppedEnderEye] run tag @s remove PlyDroppedEnderEye
    execute if entity @s[tag=PlyUsingEyeStart] run tag @s remove PlyUsingEyeStart
    execute if entity @s[tag=PlyUsingEyeEnd] run tag @s remove PlyUsingEyeEnd

# 空中状態リセット
    execute if entity @s[tag=PlyJumpping] run tag @s remove PlyJumpping

# 進捗状況リセット
    execute if entity @s[tag=PlyDamaged] run tag @s remove PlyDamaged
    execute if entity @s[tag=PlySelectedItemChanged] run tag @s remove PlySelectedItemChanged
    execute if entity @s[tag=AdvTradeQuestNormal] run tag @s remove AdvTradeQuestNormal
    execute if entity @s[tag=AdvInventoryChangedMain] run tag @s remove AdvInventoryChangedMain
    execute if entity @s[tag=AdvInventoryChangedOff] run tag @s remove AdvInventoryChangedOff
    execute if entity @s[tag=AdvInventoryChangedOther] run tag @s remove AdvInventoryChangedOther
    execute if entity @s[tag=AdvPlayerHurtEntity] run tag @s remove AdvPlayerHurtEntity
    execute if entity @s[tag=AdvUsingItemPotion] run tag @s remove AdvUsingItemPotion

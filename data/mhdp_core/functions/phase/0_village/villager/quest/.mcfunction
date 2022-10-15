#> mhdp_core:phase/0_village/villager/quest/
#
# 村人の配置処理 クエスト発注者

# 既存の村人削除
    tp @e[type=wandering_trader,tag=VlgMerchant,tag=VlgQuestNormal] ~ 0 ~
    kill @e[type=wandering_trader,tag=VlgMerchant,tag=VlgQuestNormal]

# 召喚
    summon wandering_trader 161 62 2 {DespawnDelay:0,Silent:1b,Invulnerable:1b,Tags:["VlgMerchant","VlgQuestNormal"],CustomName:'{"text":"クエスト受付(ノーマル)"}',Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Offers:{Recipes:[{maxUses:1,buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}]}}

# 取引内容更新
    data modify storage mhdp_core:temp Temp.Trade set value []
    
    # テスト用
    # give @p paper{display:{Name:'{"text":"テスト用クエスト","italic":false}',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},CustomModelData:10000,MhdpQuest:1,QuestId:0} 1
        data modify storage mhdp_core:temp Temp.Trade append value {maxUses:9999,uses:0,xp:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"テスト用クエスト","italic":false}',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},CustomModelData:10000,MhdpQuest:1,QuestId:0}}}
        data modify storage mhdp_core:temp Temp.Trade append value {maxUses:9999,uses:0,xp:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"テスト用クエスト","italic":false}',Lore:['{"text":"目標："}','{"text":"・火竜の討伐2","italic":false}']},CustomModelData:10000,MhdpQuest:1,QuestId:1}}}
        data modify storage mhdp_core:temp Temp.Trade append value {maxUses:9999,uses:0,xp:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"テスト用クエスト","italic":false}',Lore:['{"text":"目標："}','{"text":"・火竜の討伐3","italic":false}']},CustomModelData:10000,MhdpQuest:1,QuestId:2}}}

    # ★1
        # function ...

    # ★2
        # function ...

# 終了
    data modify entity @e[type=wandering_trader,tag=VlgQuestNormal,limit=1] Offers.Recipes set from storage mhdp_core:temp Temp.Trade
    data remove storage mhdp_core:temp Temp

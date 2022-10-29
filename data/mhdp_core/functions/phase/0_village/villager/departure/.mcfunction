#> mhdp_core:phase/0_village/villager/departure/
#
# 村人の配置処理 クエスト出発確認用

# 既存の村人削除
    kill @e[type=villager,tag=VlgBell]

# 召喚
    summon villager 183 64 214 {NoAI:1b,Rotation:[-90F,0F],Silent:1b,Invulnerable:1b,Tags:["VlgBell"],Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Offers:{},ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    summon villager 183 64 214 {NoAI:1b,Rotation:[0F,0F],Silent:1b,Invulnerable:1b,Tags:["VlgBell"],Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Offers:{},ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

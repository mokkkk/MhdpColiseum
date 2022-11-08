#> mhdp_core:phase/0_village/villager/departure/
#
# 村人の配置処理 クエスト出発確認用

# 既存の村人削除
    tp @e[type=villager,tag=VlgBell] ~ 0 ~
    kill @e[type=villager,tag=VlgBell]

# 召喚
    summon villager 223 64 206 {NoAI:1b,Rotation:[-90F,0F],Silent:1b,Invulnerable:1b,Tags:["VlgBell","0"],Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Offers:{},ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    summon villager 223 64 206 {NoAI:1b,Rotation:[-90F,0F],Silent:1b,Invulnerable:1b,Tags:["VlgBell","1"],Attributes:[{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Offers:{},ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute as @e[type=villager,tag=VlgBell,tag=0] at @s run tp @s ~ ~0.3 ~0.15
    execute as @e[type=villager,tag=VlgBell,tag=1] at @s run tp @s ~ ~0.3 ~-0.15
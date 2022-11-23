#> mhdp_weapons:sp_items/wirebug/move
#
# 翔蟲 tick処理

# 効果音
    playsound block.grass.step master @a ~ ~ ~ 1 1

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=WirebugStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target

# 浮遊エフェクト付与
    summon area_effect_cloud ~ ~ ~ {Tags:["MhdpKnockbackEffect"],Duration:6,Age:4,Effects:[{Id:25,Amplifier:5b,Duration:2,ShowParticles:0b}]}
    execute store result score #mhdp_temp_rotate MhdpCore run data get entity @e[type=marker,tag=WirebugStand,tag=Rotater,limit=1] Rotation[1] 1
    execute if score #mhdp_temp_rotate MhdpCore matches ..-80 run tag @s add MoveUp
    execute if score #mhdp_temp_rotate MhdpCore matches -15.. run scoreboard players set #mhdp_temp_rotate MhdpCore -15
    execute if score #mhdp_temp_rotate MhdpCore matches ..-52 run scoreboard players set #mhdp_temp_rotate MhdpCore -52
    execute if entity @s[tag=MoveUp] run scoreboard players set #mhdp_temp_rotate MhdpCore -63
    scoreboard players set #mhdp_temp_const MhdpCore -2
    scoreboard players operation #mhdp_temp_rotate MhdpCore *= #mhdp_temp_const MhdpCore
    execute store result entity @e[type=area_effect_cloud,tag=MhdpKnockbackEffect,limit=1,sort=nearest] Effects[0].Amplifier byte 1 run scoreboard players get #mhdp_temp_rotate MhdpCore

# 移動
    execute if entity @s[tag=!MoveUp] rotated as @e[type=marker,tag=WirebugStand,tag=Rotater,limit=1] rotated ~ 0 positioned ^ ^-0.5 ^-0.2 run summon area_effect_cloud ~ ~ ~ {Tags:["MhdpKnockbackParts"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]}]}
    execute if entity @s[tag=MoveUp] rotated as @e[type=marker,tag=WirebugStand,tag=Rotater,limit=1] rotated ~ 0 positioned ^ ^-0.6 ^ run summon area_effect_cloud ~ ~ ~ {Tags:["MhdpKnockbackParts"],Passengers:[{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]},{id:"minecraft:slime",NoGravity:1b,Silent:1b,NoAI:1b,Tags:["MhdpKnockbackParts"],DeathLootTable:"asa_animator:no_drop",Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:6000000,ShowParticles:0b}]}]}

# 終了
    kill @e[type=marker,tag=WirebugStand,tag=Rotater]
    tag @s remove MoveUp

#> asa_animator:zinogre/manager/0_init/1_intrusion/
#
# 雷狼竜 乱入処理

# 確認
    execute unless entity @e[type=armor_stand,tag=ZinogreRoot] run data modify storage mhdp: ExistMonster set value 0b
    execute if entity @e[type=armor_stand,tag=ZinogreRoot] run data modify storage mhdp: ExistMonster set value 1b

# 召喚処理 
    execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:zinogre/manager/0_init/1_intrusion/summon

# エラーメッセージ
    execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【ERROR：既に雷狼竜が存在するため，召喚できません】"}

# ID割り当て
    scoreboard players operation @e[type=armor_stand,tag=ZinogreRoot] MhdpCore = #mhdp_id_temp MhdpCore
    tp @e[type=armor_stand,tag=ZinogreRoot,limit=1] ~ ~ ~

# 終了
    data modify storage mhdp: ExistMonster set value 0b


# 確認
    execute unless entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 0b
    execute if entity @e[type=armor_stand,tag=DiablosRoot] run data modify storage mhdp: ExistMonster set value 1b

# 召喚処理 
    execute if data storage mhdp: {ExistMonster:0b} run function asa_animator:diablos/manager/intrusion_

# エラーメッセージ
    execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【既に角竜が存在するため，召喚できません】"}

# ID割り当て
    scoreboard players operation @e[type=armor_stand,tag=ReusRoot,limit=1] MhdpCore = #mhdp_id_temp MhdpCore

# 終了
    data modify storage mhdp: ExistMonster set value 0b
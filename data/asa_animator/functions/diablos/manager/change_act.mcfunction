
# 初遭遇時
execute if entity @s[tag=!AlreadyVoice] run function asa_animator:diablos/manager/first_contact

# 怒り変化
execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_diablos_anger_count AsaMatrix 1

# 通常時
execute unless entity @s[tag=AnmAnger] run function asa_animator:diablos/manager/change_normal/change
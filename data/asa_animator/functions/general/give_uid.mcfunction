
# UID割り振り
    scoreboard players add #mhdp_general_uid MhdpPartsUid 1
    execute if score #mhdp_general_uid MhdpPartsUid matches 2147483647 run scoreboard players set #mhdp_general_uid MhdpPartsUid -2147483648
    scoreboard players operation @s MhdpPartsUid = #mhdp_general_uid MhdpPartsUid

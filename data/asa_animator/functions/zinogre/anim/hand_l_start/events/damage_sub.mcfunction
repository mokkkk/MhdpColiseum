# ダメージ
tag @s add D_ZinogreHand
function mhdp_core:player/damage/attack
tag @s remove D_ZinogreHand

# 命中カウントリセット
    scoreboard players set #mhdp_zinogre_hand_count AsaMatrix -1

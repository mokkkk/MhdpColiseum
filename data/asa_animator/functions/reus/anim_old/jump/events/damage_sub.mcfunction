# ダメージ
tag @s add D_ReusJump
# プレイヤーに毒を与える
# 10秒, lv0
    scoreboard players set #mhdp_temp_poison_time MhdpCore 200
    scoreboard players set #mhdp_temp_poison_lv MhdpCore 0
function mhdp_core:player/damage/attack
tag @s remove D_ReusJump
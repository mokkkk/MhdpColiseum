#> asa_animator:zinogre/manager/0_init/1_intrusion/summon
#
# 雷狼竜 乱入処理

# パーツ召喚
    execute positioned ~ ~50 ~ run function asa_animator:zinogre/summon

# 召喚時アニメーション再生
    tag @e[type=armor_stand,tag=ZinogreRoot] add AnmSummon

# 当たり判定召喚
    execute positioned ~ ~-50 ~ run function asa_animator:zinogre/manager/0_init/3_general/health

# HPセット
    function asa_animator:zinogre/manager/0_init/3_general/hp

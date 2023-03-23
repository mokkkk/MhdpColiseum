#> asa_animator:zinogre/manager/0_init/0_summon/summon
#
# 雷狼竜 召喚処理

# パーツ召喚
    execute positioned 0 0 0 run function asa_animator:zinogre/summon

# 当たり判定召喚
    execute positioned 0 0 0 run function asa_animator:zinogre/manager/0_init/3_general/health

# HPセット
    function asa_animator:zinogre/manager/0_init/3_general/hp

#> asa_animator:reus/manager/0_init/0_summon/summon
#
# 火竜 召喚処理

# パーツ召喚
    execute positioned 0 0 0 run function asa_animator:reus/summon

# 当たり判定召喚
    execute positioned 0 0 0 run function asa_animator:reus/manager/0_init/3_general/health

# HPセット
    function asa_animator:reus/manager/0_init/3_general/hp

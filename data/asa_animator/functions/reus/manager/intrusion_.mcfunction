
# パーツ召喚
    execute positioned ~ ~50 ~ run function asa_animator:reus/summon

# 召喚時アニメーション再生
    tag @e[type=armor_stand,tag=ReusRoot] add AnmSummon

# 当たり判定召喚
    execute positioned ~ ~-50 ~ run function asa_animator:reus/manager/health/summon

# HPセット
    function asa_animator:reus/manager/summon_hp

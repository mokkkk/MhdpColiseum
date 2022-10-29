
# パーツ召喚
    execute positioned ~ ~-12 ~ run function asa_animator:diablos/summon

# 召喚時アニメーション再生
    tag @e[type=armor_stand,tag=DiablosRoot] add AnmSummon

# 当たり判定召喚
    execute positioned ~ ~-12 ~ run function asa_animator:diablos/manager/health/summon

# HPセット
    function asa_animator:diablos/manager/summon_hp

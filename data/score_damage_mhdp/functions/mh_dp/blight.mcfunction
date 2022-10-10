#> score_damage_mhdp:mh_dp/blight
#
# プレイヤーを属性やられにする

# 火属性やられ
    execute unless entity @s[tag=BlightFire] if data storage mhdp: DamageType{Epf:2} run scoreboard players set @s MhdpBlightFire 100

# 龍属性やられ
    execute unless entity @s[tag=BlightDragon] if data storage mhdp: DamageType{Epf:4} run scoreboard players set @s MhdpBlightDragon 100

say 属性やられ処理 in score_damage_mhdp:mh_dp/blight
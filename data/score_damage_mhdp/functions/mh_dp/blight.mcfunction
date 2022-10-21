#> score_damage_mhdp:mh_dp/blight
#
# プレイヤーを属性やられにする

# 火属性やられ
    execute unless entity @s[tag=BltFire] if data storage mhdp_core:temp Temp.Damage{Type:1} run scoreboard players set @s MhdpBlightFire 400

# 水属性やられ
    execute unless entity @s[tag=BltWater] if data storage mhdp_core:temp Temp.Damage{Type:2} run scoreboard players set @s MhdpBlightWater 400

# 氷属性やられ
    execute unless entity @s[tag=BltIce] if data storage mhdp_core:temp Temp.Damage{Type:4} run scoreboard players set @s MhdpBlightIce 400

# 龍属性やられ
    execute unless entity @s[tag=BltDragon] if data storage mhdp_core:temp Temp.Damage{Type:5} run scoreboard players set @s MhdpBlightDragon 400

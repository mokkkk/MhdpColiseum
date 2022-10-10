#> mhdp_core:player/damage/knockback/damage/
#
# ダメージによるノックバック分岐用処理
# スキル・アーマーによる無効化も行う

# ノックパック
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:1} run function mhdp_core:player/damage/knockback/damage/0
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:2} run function mhdp_core:player/damage/knockback/damage/1
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:3} run function mhdp_core:player/damage/knockback/damage/2

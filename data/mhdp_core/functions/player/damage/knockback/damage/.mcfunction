#> mhdp_core:player/damage/knockback/damage/
#
# ダメージによるノックバック分岐用処理
# スキル・アーマーによる無効化も行う

# ノックバック耐性確認
    scoreboard players set #mhdp_kb_temp MhdpCore 0
# 1
    # スキル確認
        execute if entity @s[tag=SklFlinchFree] if predicate asa_animator:random/050 run scoreboard players set #mhdp_kb_temp MhdpCore 1
# 2
    # アーマー確認
        execute if entity @s[tag=PlyArmorSuper] run scoreboard players set #mhdp_kb_temp MhdpCore 2
# 3
    # アーマー確認
        execute if entity @s[tag=PlyArmorHyper] run scoreboard players set #mhdp_kb_temp MhdpCore 3
    # 特殊装具確認
        execute if entity @s[tag=ItmUseImmovable] run scoreboard players set #mhdp_kb_temp MhdpCore 3

# ノックパック
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:1} if score #mhdp_kb_temp MhdpCore matches ..0 run function mhdp_core:player/damage/knockback/damage/0
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:2} if score #mhdp_kb_temp MhdpCore matches ..1 run function mhdp_core:player/damage/knockback/damage/1
    execute if data storage mhdp_core:temp Temp.Damage{Knockback:3} if score #mhdp_kb_temp MhdpCore matches ..2 run function mhdp_core:player/damage/knockback/damage/2

# 終了
    execute if score #mhdp_kb_temp MhdpCore matches ..0 run say ノックバックあるよ
    scoreboard players reset #mhdp_kb_temp

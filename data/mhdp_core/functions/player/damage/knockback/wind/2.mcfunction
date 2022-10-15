#> mhdp_core:player/damage/knockback/wind/2
#
# プレイヤーノックバック開始処理

# スキル確認
    execute if entity @s[tag=SklChamBlsLv2] run tag @s add NotKnockback

# アーマー確認
    execute if entity @s[tag=PlyArmorHyper] run tag @s add NotKnockback

# 特殊装具確認
    execute if entity @s[tag=ItmUseImmovable] run tag @s add NotKnockback

# スキルで無効化されていない場合，風圧処理実行
    execute unless entity @s[tag=NotKnockback] run function mhdp_core:player/damage/knockback/wind/2_

# 終了
    tag @s remove NotKnockback

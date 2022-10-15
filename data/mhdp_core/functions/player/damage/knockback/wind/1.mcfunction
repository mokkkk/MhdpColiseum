#> mhdp_core:player/damage/knockback/wind/1
#
# プレイヤーノックバック開始処理

# スキル確認
    execute if entity @s[tag=SklWindproofLv2] run tag @s add NotKnockback
    execute if entity @s[tag=SklChamBlsLv1] run tag @s add NotKnockback
    execute if entity @s[tag=SklChamBlsLv2] run tag @s add NotKnockback

# アーマー確認
    execute if entity @s[tag=PlyArmorHyper] run tag @s add NotKnockback

# 特殊装具確認
    execute if entity @s[tag=ItmUseImmovable] run tag @s add NotKnockback

# フレーム回避確認
    execute if entity @s[scores={MhdpTAvoid=1..}] run tag @s add NotKnockback
    execute if entity @s[scores={MhdpTDamage=1..}] run tag @s add NotKnockback
    
# スキルで無効化されていない場合，風圧処理実行
    execute unless entity @s[tag=NotKnockback] run function mhdp_core:player/damage/knockback/wind/1_

# 終了
    tag @s remove NotKnockback

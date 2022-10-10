#> mhdp_core:player/damage/not_player
#
# ダメージを受けたときに走らせる処理 非プレイヤー

# score_damage用の引数用意
    data modify storage score_damage: Argument set value {Damage:1.0f, BypassArmor:1b}
    data modify storage score_damage: Argument.Damage set from storage mhdp_core:temp Temp.Damage.Damage

# ノックバック用のスライムは除外する
    execute if entity @s[type=slime,tag=MhdpKnockbackParts] run tag @s add MhdpDExcept

# hurttime取得
    execute store result score #mhdp_hurt_time AsaMatrix run data get entity @s HurtTime

# 攻撃
    execute unless entity @s[tag=MhdpDExcept] if score #mhdp_hurt_time AsaMatrix matches ..0 run function score_damage_mhdp:api/attack

# 終了
    scoreboard players reset #mhdp_hurt_time
    tag @s remove MhdpDExcept

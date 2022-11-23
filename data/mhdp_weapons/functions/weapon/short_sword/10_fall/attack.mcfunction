#> mhdp_weapons:weapon/short_sword/10_fall/attack
#
# 片手剣：フォールバッシュ 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 240
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 0
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:2,Offhand:1b}

# ダメージ発生
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

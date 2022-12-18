#> score_damage_mhdp:core/calc_guard
#
# 与えるダメージを計算します（MHDP用）

# ガード値取得
    scoreboard players set $MhdpGuard ScoreDamageCore -10
    execute if entity @s[tag=PlyWpnGsword,tag=WpnGswordGuard] run scoreboard players set $MhdpGuard ScoreDamageCore 3
    execute if entity @s[tag=PlyWpnSsword,tag=WpnSsword3Guard] run scoreboard players set $MhdpGuard ScoreDamageCore 2

    # スキル：ガード性能
        execute if entity @s[tag=SklGuardLv1] if score $MhdpGuard ScoreDamageCore matches 1.. run scoreboard players add $MhdpGuard ScoreDamageCore 1
        execute if entity @s[tag=SklGuardLv2] if score $MhdpGuard ScoreDamageCore matches 1.. run scoreboard players add $MhdpGuard ScoreDamageCore 2

# ダメージ軽減率取得
    execute store result score $MhdpAttackGuard ScoreDamageCore run data get storage mhdp_core:temp Temp.Damage.Guard
    # ガード値が負の場合，ガードを無効化
        execute if score $MhdpAttackGuard ScoreDamageCore matches ..0 run scoreboard players set $MhdpAttackGuard ScoreDamageCore 1000
    scoreboard players operation $MhdpAttackGuard ScoreDamageCore -= $MhdpGuard ScoreDamageCore
    
# ガード成功判定
    execute if score $MhdpAttackGuard ScoreDamageCore matches ..4 run tag @s add PlyGuardSuccess

# ガード成功時，威力に応じてのけぞりの大きさを決定
    execute if entity @s[tag=PlyGuardSuccess] if score $MhdpAttackGuard ScoreDamageCore matches 3..4 run scoreboard players set @s MhdpWeaponDeactivateTimer 20
    execute if entity @s[tag=PlyGuardSuccess] if score $MhdpAttackGuard ScoreDamageCore matches 2 run scoreboard players set @s MhdpWeaponDeactivateTimer 15
    execute if entity @s[tag=PlyGuardSuccess] if score $MhdpAttackGuard ScoreDamageCore matches 1 run scoreboard players set @s MhdpWeaponDeactivateTimer 10
    execute if entity @s[tag=PlyGuardSuccess] if score $MhdpAttackGuard ScoreDamageCore matches ..0 run scoreboard players set @s MhdpWeaponDeactivateTimer 5

# ガード成功時，斬れ味を消費
    execute if entity @s[tag=PlyGuardSuccess] run function score_damage_mhdp:core/sharpness

# スタミナ消費
    execute if entity @s[tag=PlyGuardSuccess] run scoreboard players remove @s MhdpStamina 300

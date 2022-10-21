#> mhdp_weapons:weapon/bow/90_arrow/attack
#
# 放たれた矢の処理 攻撃
#

# プレイヤー特定
    tag @s add Target
    execute as @a if score @s MhdpPlayerUid = @e[type=marker,tag=Target,limit=1] MhdpPlayerUid run tag @s add Attacker

# 溜め段階に応じて倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 100
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 100
    execute if entity @s[tag=WpnBowCharge1] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 120
    execute if entity @s[tag=WpnBowCharge2] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 140
    execute if entity @s[tag=WpnBowCharge3] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 180
    execute if entity @s[tag=WpnBowCharge4] run scoreboard players set #mhdp_temp_damage_multiply MhdpCore 210

# クリティカル距離以外の場合，ダメージ減算
    execute if entity @s[scores={MhdpCore=..1}] run function mhdp_weapons:weapon/bow/90_arrow/calc
    execute if entity @s[scores={MhdpCore=8..}] run function mhdp_weapons:weapon/bow/90_arrow/calc

# クリティカル距離の場合，演出
    execute if entity @s[scores={MhdpCore=2..7}] as @a[tag=Attacker] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
    execute if entity @s[scores={MhdpCore=2..7}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 3 force

# ダメージ発生
    execute positioned ^ ^ ^1 as @e[type=slime,tag=MonsterParts,distance=..2.5,limit=1,sort=nearest] run tag @s add Victim
    execute at @e[type=slime,tag=Victim] as @a[tag=Attacker] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

# 終了
    tag @a remove Attacker
    kill @s

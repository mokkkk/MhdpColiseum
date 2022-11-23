#> mhdp_weapons:weapon/bow/91_pierce_arrow/attack
#
# 放たれた矢の処理 攻撃
#

# プレイヤー特定
    tag @s add Target
    execute as @a if score @s MhdpPlayerUid = @e[type=marker,tag=Target,limit=1] MhdpPlayerUid run tag @s add Attacker

# 倍率設定
    scoreboard players set #mhdp_temp_damage_multiply MhdpCore 80
    scoreboard players set #mhdp_temp_damage_multiply_element MhdpCore 80
    data modify storage mhdp_core:temp Temp.WeaponDamage set value {Type:1,Offhand:0b}

# クリティカル距離以外の場合，ダメージ減算
    execute if entity @s[scores={MhdpCore=..3}] run function mhdp_weapons:weapon/bow/91_pierce_arrow/calc
    execute if entity @s[scores={MhdpCore=18..}] run function mhdp_weapons:weapon/bow/91_pierce_arrow/calc

# クリティカル距離の場合，演出
    execute if entity @s[scores={MhdpCore=4..17}] as @a[tag=Attacker] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
    execute if entity @s[scores={MhdpCore=4..17}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 3 force

# ダメージ発生
    execute as @e[type=slime,tag=MonsterParts,distance=..2.5,limit=1,sort=nearest] run tag @s add Victim
    execute at @e[type=slime,tag=Victim] as @a[tag=Attacker] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

# 終了
    tag @a remove Attacker
    tag @s add Attacked
    scoreboard players add @s MhdpWeaponCountBow 20

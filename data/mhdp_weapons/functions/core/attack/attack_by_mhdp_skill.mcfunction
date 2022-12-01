#> mhdp_weapons:core/attack/attack_by_mhdp_skill
#
# 攻撃時処理（武器動作）
# mhdp_temp_damage_multiply：物理ダメージ倍率
# mhdp_temp_damage_multiply_element：属性ダメージ倍率

# 最も近くのスライムのみ対象とする
    tag @e[type=slime,tag=Targets,limit=1,sort=nearest] add Victim

# mhdp側データ取得
    # 攻撃側ステータス
        execute store result score #mhdp_temp_atk_damage MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.AtkDamage 100
        execute store result score #mhdp_temp_element_type MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.ElementType
        execute store result score #mhdp_temp_element_damage MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.ElementDamage 100
    # 防御側ステータス
    # 物理：#mhdp_temp_def
    # 属性：#mhdp_temp_element_def
        execute as @e[tag=Victim,limit=1] run function mhdp_core:monster/damage/get

# 補正値計算
    function mhdp_weapons:core/attack/calc_item_skill

# 物理ダメージ計算
    scoreboard players operation #mhdp_temp_atk_damage MhdpCore *= #mhdp_temp_damage_multiply MhdpCore
    execute store result score #mhdp_temp_damage MhdpCore run scoreboard players operation #mhdp_temp_atk_damage MhdpCore /= #asam_const_100 AsaMatrix
    scoreboard players operation #mhdp_temp_damage MhdpCore *= #mhdp_temp_def MhdpCore
    scoreboard players operation #mhdp_temp_damage MhdpCore /= #asam_const_100 AsaMatrix

# 属性ダメージ計算
    execute if score #mhdp_temp_element_type MhdpCore matches 0 run scoreboard players set #mhdp_temp_element_damage MhdpCore 0
    execute unless score #mhdp_temp_element_type MhdpCore matches 0 run function mhdp_weapons:core/attack/get_element_damage

# 切れ味更新
    execute if entity @s[tag=PlyWpnBow] run tag @s add NoUpdate
    execute if entity @s[tag=PlyWpnGsword] if data storage mhdp_core:temp Temp.WeaponDamage{Offhand:1b} run tag @s add NoUpdate
    execute if entity @s[tag=PlyWpnSsword] if data storage mhdp_core:temp Temp.WeaponDamage{Offhand:1b} run tag @s add NoUpdate
    execute unless entity @s[tag=NoUpdate] run function mhdp_weapons:core/attack/sharpness/
    tag @s remove NoUpdate

# 斬れ味補正適用
    execute if entity @s[tag=!PlyWpnBow] run function mhdp_weapons:core/attack/sharpness/calc

# 会心補正適用
    execute store result score #mhdp_temp_crit MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.Critical 100
    # 翔蟲抜刀攻撃時，会心100%
        execute if entity @s[tag=PlyDrawAttackWirebug] run scoreboard players set #mhdp_temp_crit MhdpCore 100
    function lib:random/
    scoreboard players operation #mhdp_temp_rand MhdpCore %= #asam_const_100 AsaMatrix
    execute if score #mhdp_temp_rand MhdpCore <= #mhdp_temp_crit MhdpCore run function mhdp_weapons:core/attack/crit/calc
    
# デバッグ用
    execute if score #mhdp_temp_element_type MhdpCore matches 0 run tellraw @a [{"text":"物理："},{"score":{"name":"#mhdp_temp_damage","objective":"MhdpCore"}}]
    execute unless score #mhdp_temp_element_type MhdpCore matches 0 run tellraw @a [{"text":"物理："},{"score":{"name":"#mhdp_temp_damage","objective":"MhdpCore"}},{"text":"     属性："},{"score":{"name":"#mhdp_temp_element_damage","objective":"MhdpCore"}}]

# HP適応
    scoreboard players operation #mhdp_temp_damage MhdpCore += #mhdp_temp_element_damage MhdpCore
    scoreboard players set #mhdp_temp_health MhdpCore 100000
    scoreboard players operation #mhdp_temp_health MhdpCore -= #mhdp_temp_damage MhdpCore
    execute store result entity @e[tag=Victim,limit=1] Health float 0.01 run scoreboard players get #mhdp_temp_health MhdpCore

# デバッグ用
    execute unless score #mhdp_temp_element_type MhdpCore matches 0 run tellraw @a [{"text":"合計："},{"score":{"name":"#mhdp_temp_damage","objective":"MhdpCore"}}]
    
# ダメージログ表示
    # 肉質に応じて色を設定
        scoreboard players set $Color Temporary 0
        execute if score #mhdp_temp_def MhdpCore matches 45.. run scoreboard players set $Color Temporary 1
    # 表示
        scoreboard players operation $Fluctuation Lib = #mhdp_temp_damage MhdpCore
        execute positioned as @e[tag=Victim] positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function lib:status_log/show_health

# ヒットエフェクト表示
    execute positioned as @e[tag=Victim] run function mhdp_weapons:core/attack/effect/

# モンスター側ダメージ処理実行
    execute as @e[tag=Victim] at @s run function asa_animator:general/damage

# 終了
# モンスターの物理肉質のみ，後の処理で使う可能性があるので残しておく
    tag @s remove Critical
    data remove storage mhdp_core:temp Temp
    scoreboard players reset #mhdp_temp_health
    scoreboard players reset #mhdp_temp_multiply
    scoreboard players reset #mhdp_temp_damage
    scoreboard players reset #mhdp_temp_damage_multiply
    scoreboard players reset #mhdp_temp_damage_multiply_element
    scoreboard players reset #mhdp_temp_atk_damage
    scoreboard players reset #mhdp_temp_element_type
    scoreboard players reset #mhdp_temp_element_damage
    scoreboard players reset #mhdp_temp_element_def
    scoreboard players reset #mhdp_temp_rand
    scoreboard players reset #mhdp_temp_crit
    tag @e[type=slime,tag=Victim] remove Victim
